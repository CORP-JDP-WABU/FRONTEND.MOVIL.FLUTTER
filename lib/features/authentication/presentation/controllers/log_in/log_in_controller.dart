import 'dart:convert';
import 'package:formz/formz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/inputs/email.dart';
import 'package:wabu/common/inputs/password.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/authentication.dart';
import 'package:wabu/utils/cipher.dart';

part 'log_in_controller.g.dart';

@riverpod
class LogInController extends _$LogInController {
  @override
  LogInState build() => const LogInState(
        email: Email.pure(),
        password: Password.pure(),
      );

  void emailChanged(String value) {
    final email = Email.dirty(value);

    state = state.copyWith(
      email: email,
      isValid: Formz.validate([email, state.password]),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);

    state = state.copyWith(
      password: password,
      utilError: null,
      isValid: Formz.validate([state.email, password]),
    );
  }

  void onSubmit() async {
    state = state.copyWith(
      email: Email.dirty(state.email.value),
      password: Password.dirty(state.password.value),
      formStatus: FormStatus.validating,
      isValid: Formz.validate([state.email, state.password]),
    );

    if (state.isValid) {
      state = state.copyWith(formStatus: FormStatus.posting);
      ref
          .read(welcomePageControllerProvider.notifier)
          .setPageStatus(WelcomeStatus.posting);

      try {
        final authRepository = ref.watch(authRepositoryProvider);
        final getKeysResult = await authRepository.getKeys();

        getKeysResult.fold((Failure failure) {
          setPageError();
        }, (AuthKeys authKeys) async {
          final encryptedLoginForm = _encryptLoginForm(authKeys);
          final logInResult = await authRepository.logIn(encryptedLoginForm);

          logInResult.fold((Failure failure) {
            switch (failure.errorCode) {
              case 'LOGIN_EMAIL_FAILED':
                state = state.copyWith(
                  formStatus: FormStatus.invalid,
                );

                Globals.newEmail = state.email.value;
                ref
                    .read(welcomePageControllerProvider.notifier)
                    .addPage(WelcomePage.signUp);
                setPageIdle();
                break;
              case 'LOGIN_PASSWORD_FAILED':
                state = state.copyWith(
                  utilError:
                      'Parece que esta contraseña no es la correcta \u26A0',
                  formStatus: FormStatus.invalid,
                );
                setPageIdle();
                break;
              case 'UNIVERSITY_NOT_FOUND':
                state = state.copyWith(
                  formStatus: FormStatus.invalid,
                  loginStatus: LoginStatus.noUniversity,
                );
                setPageIdle();
                break;
              default:
                setPageError();
                break;
            }
          }, (Token token) async {
            final prefs = await SharedPreferences.getInstance();

            Globals.studentId = token.idStudent;
            Globals.universityId = token.idUniversity;
            Globals.isFirstLogin = token.isFirstLogin;
            Globals.updateInfoMode = UpdateInfoMode.logIn;
            Globals.token = token.token;
            await prefs.setString('token', token.token);
            await prefs.setString('studentId', token.idStudent);
            await prefs.setString('universityId', token.idUniversity);

            state = state.copyWith(
              formStatus: FormStatus.valid,
            );

            setPageIdle();
          });
        });
      } catch (error) {
        setPageError();
      }
    }
  }

  EncryptedForm _encryptLoginForm(AuthKeys authKeys) {
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
