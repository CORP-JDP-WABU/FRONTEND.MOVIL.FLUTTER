import 'dart:convert';
import 'package:formz/formz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/inputs/email.dart';
import 'package:wabu/common/inputs/new_password.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/authentication.dart';
import 'package:wabu/utils/cipher.dart';

part 'sign_up_controller.g.dart';

@riverpod
class SignUpController extends _$SignUpController {
  @override
  SignUpState build() => const SignUpState(
        email: Email.pure(),
        password: NewPassword.pure(),
      );

  void emailChanged(String value) {
    final email = Email.dirty(value);

    state = state.copyWith(
      email: email,
      isValid: Formz.validate([email, state.password]),
    );
  }

  void passwordChanged(String value) {
    final password = NewPassword.dirty(value);

    state = state.copyWith(
      password: password,
      isValid: Formz.validate([state.email, password]),
    );
  }

  void onSubmit() async {
    final authRepository = ref.watch(authRepositoryProvider);
    final accountRepository = ref.watch(accountRepositoryProvider);

    state = state.copyWith(
      email: Email.dirty(state.email.value),
      password: NewPassword.dirty(state.password.value),
      formStatus: FormStatus.validating,
      isValid: Formz.validate([state.email, state.password]),
    );

    if (state.isValid) {
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
          final signUpResult = await accountRepository.register(encryptedForm);

          signUpResult.fold((failure) {
            switch (failure.errorCode) {
              case "REGISTER_ACCOUNT_EMAIL_FAIL":
                state = state.copyWith(
                  formStatus: FormStatus.invalid,
                );

                Globals.email = state.email.value;
                setPageIdle();
                break;
              default:
                setPageError();
                break;
            }
          }, (Student newStudent) {
            newStudent;
            state = state.copyWith(
              formStatus: FormStatus.valid,
            );
            Globals.newEmail = state.email.value;
            Globals.password = state.password.value;
            Globals.verificationCodeMode = VerificationCodeMode.signUp;
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
    final encryptedPassword =
        Cipher.encrypt(state.password.value, base64.decode(authKeys.keys.x2));

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
