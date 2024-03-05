import 'dart:convert';

import 'package:formz/formz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/inputs/new_password.dart';
import 'package:wabu/common/inputs/password.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/data/providers.dart';
import 'package:wabu/features/authentication/domain/models/auth_keys/auth_keys.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form_result/update_info_form_result.dart';
import 'package:wabu/features/authentication/presentation/controllers/new_password/new_password_state.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
import 'package:wabu/utils/cipher.dart';

part 'new_password_controller.g.dart';

@riverpod
class NewPasswordController extends _$NewPasswordController {
  @override
  NewPasswordState build() => const NewPasswordState();

  void newPasswordChanged(String value) {
    final newPassword = NewPassword.dirty(value);

    state = state.copyWith(
      newPassword: newPassword,
      isValid: Formz.validate([newPassword, state.confirmNewPassword]),
    );
  }

  void confirmNewPasswordChanged(String value) {
    final confirmNewPasswod = Password.dirty(value);

    state = state.copyWith(
      confirmNewPassword: confirmNewPasswod,
      isValid: Formz.validate([state.newPassword, confirmNewPasswod]),
    );
  }

  void onSubmit() async {
    try {
      final authRepository = ref.watch(authRepositoryProvider);
      final accountRepository = ref.watch(accountRepositoryProvider);

      state = state.copyWith(
        isValid: Formz.validate([state.newPassword, state.confirmNewPassword]),
      );

      if (!state.isValid) return;

      state = state.copyWith(formStatus: FormStatus.posting);
      ref
          .read(welcomePageControllerProvider.notifier)
          .setPageStatus(WelcomeStatus.posting);

      final getKeysResult = await authRepository.getKeys();

      getKeysResult.fold((Failure failure) {
        setPageError();
      }, (AuthKeys authKeys) async {
        final encryptedForm = _encryptForm(authKeys);
        final recoverResult = await accountRepository.recover(encryptedForm);

        recoverResult.fold((failure) {
          setPageError();
        }, (UpdateInfoFormResult updateInfoFormResult) {
          if (updateInfoFormResult.isUpdate != true) {
            setPageError();
            return;
          }

          ref
              .read(welcomePageControllerProvider.notifier)
              .addPage(WelcomePage.logIn);
          setPageIdle();
        });
      });
    } catch (e) {
      setPageError();
    }
  }

  EncryptedForm _encryptForm(AuthKeys authKeys) {
    final email = Globals.email ?? '';

    final encryptedEmail =
        Cipher.encrypt(email, base64.decode(authKeys.keys.x1));
    final encryptedPassword = Cipher.encrypt(
        state.newPassword.value, base64.decode(authKeys.keys.x2));

    final loginMap = {
      'email': encryptedEmail,
      'password': encryptedPassword,
    };

    final encryptedLoginMap = Cipher.encryptMapWithBaseKey(loginMap);

    return EncryptedForm(
      hash: authKeys.hash,
      data: encryptedLoginMap,
    );
  }

  void setPageIdle() {
    ref
        .read(welcomePageControllerProvider.notifier)
        .setPageStatus(WelcomeStatus.idle);
  }

  void setPageError() {
    ref
        .read(welcomePageControllerProvider.notifier)
        .setPageStatus(WelcomeStatus.error);
  }
}
