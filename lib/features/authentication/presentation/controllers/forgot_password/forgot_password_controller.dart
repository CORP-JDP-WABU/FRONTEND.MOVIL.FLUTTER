import 'dart:convert';
import 'package:formz/formz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/inputs/email.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/data/providers.dart';
import 'package:wabu/features/authentication/domain/models/auth_keys/auth_keys.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/presentation/controllers/forgot_password/forgot_password_state.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
import 'package:wabu/utils/cipher.dart';

part 'forgot_password_controller.g.dart';

@riverpod
class ForgotPasswordController extends _$ForgotPasswordController {
  @override
  ForgotPasswordState build() => const ForgotPasswordState(
        email: Email.pure(),
      );

  void emailChanged(String value) {
    final email = Email.dirty(value);

    state = state.copyWith(
      email: email,
      isValid: Formz.validate([email]),
    );
  }

  void onSubmit() async {
    final authRepository = ref.watch(authRepositoryProvider);
    final accountRepository = ref.watch(accountRepositoryProvider);

    state = state.copyWith(
      email: Email.dirty(state.email.value),
      formStatus: FormStatus.validating,
      isValid: Formz.validate([state.email]),
    );

    if (state.isValid) {
      Globals.email = state.email.value;

      state = state.copyWith(formStatus: FormStatus.posting);
      ref
          .read(welcomePageControllerProvider.notifier)
          .setPageStatus(WelcomeStatus.posting);

      try {
        final getKeysResult = await authRepository.getKeys();

        getKeysResult.fold((Failure failure) {
          setPageError();
        }, (AuthKeys authKeys) async {
          final encryptedForm = _encryptForm(authKeys);
          final requestRecoveryResult =
              await accountRepository.requestRecovery(encryptedForm);

          requestRecoveryResult.fold((failure) {
            switch (failure.errorCode) {
              case "RECOVERY_PASSWORD_NOT_EXIST_STUDENT":
                state = state.copyWith(
                  formStatus: FormStatus.invalid,
                );
                setPageIdle();

                break;
              default:
                setPageError();
                break;
            }
          }, (student) {
            student;
            state = state.copyWith(
              formStatus: FormStatus.valid,
            );
            Globals.studentId = student.id;
            Globals.newEmail = state.email.value;
            Globals.verificationCodeMode = VerificationCodeMode.forgotPassword;
            ref
                .read(welcomePageControllerProvider.notifier)
                .addPage(WelcomePage.codeValidation);
            setPageIdle();
          });
        });
      } catch (error) {
        setPageError();
      }
    }
  }

  EncryptedForm _encryptForm(AuthKeys authKeys) {
    final encryptedEmail =
        Cipher.encrypt(state.email.value, base64.decode(authKeys.keys.x1));

    final forgotPasswordMap = {
      'email': encryptedEmail,
    };

    final encryptedForgotPasswordMap =
        Cipher.encryptMapWithBaseKey(forgotPasswordMap);

    return EncryptedForm(
      hash: authKeys.hash,
      data: encryptedForgotPasswordMap,
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
