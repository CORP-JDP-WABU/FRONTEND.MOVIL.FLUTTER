import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/data/providers.dart';
import 'package:wabu/features/authentication/domain/models/auth_keys/auth_keys.dart';
import 'package:wabu/features/authentication/domain/models/code_validation_result/code_validation_result.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/student/student.dart';
import 'package:wabu/features/authentication/presentation/controllers/code_validation/code_validation_state.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
import 'package:wabu/utils/cipher.dart';

part 'code_validation_controller.g.dart';

@riverpod
class CodeValidationController extends _$CodeValidationController {
  @override
  CodeValidationState build() => const CodeValidationState(
        code: '',
      );

  void codeChanged(String value) {
    state = state.copyWith(
        code: value,
        utilError: null,
        isValid: value.length == 6,
        formStatus: FormStatus.empty);
  }

  void onSubmit() async {
    final authRepository = ref.watch(authRepositoryProvider);
    final accountRepository = ref.watch(accountRepositoryProvider);

    state = state.copyWith(
      code: state.code,
      utilError: (state.code.length < 6) ? 'Completar código' : null,
      formStatus: FormStatus.validating,
      isValid: state.code.length == 6,
    );

    if (state.isValid) {
      state = state.copyWith(formStatus: FormStatus.posting);
      ref
          .read(welcomePageControllerProvider.notifier)
          .setPageStatus(WelcomeStatus.posting);

      try {
        final getKeysResult = await authRepository.getKeys();

        getKeysResult.fold((failure) {
          setPageError();
        }, (authKeys) async {
          final encryptedForm = _encryptForm(authKeys);
          var requestRecoveryResult;

          if (Globals.verificationCodeMode ==
              VerificationCodeMode.forgotPassword) {
            requestRecoveryResult =
                await accountRepository.verifyRecovery(encryptedForm);
          } else {
            requestRecoveryResult =
                await accountRepository.verifyRegistration(encryptedForm);
          }

          requestRecoveryResult.fold((failure) {
            switch (failure.errorCode) {
              // {statusCode: 409, message: Código de validación de correo incorrecto, errorCode: execute}
              case "execute":
                state = state.copyWith(
                  utilError: 'Código incorrecto',
                  formStatus: FormStatus.invalid,
                );
                setPageIdle();

                break;
              default:
                setPageError();
                break;
            }
          }, (CodeValidationResult codeValidationResult) async {
            codeValidationResult;

            if (!codeValidationResult.isValid) {
              state = state.copyWith(
                utilError: 'Código incorrecto',
                formStatus: FormStatus.invalid,
              );
              setPageIdle();
              return;
            }

            state = state.copyWith(
              formStatus: FormStatus.valid,
            );

            Globals.studentId = codeValidationResult.idStudent;

            if (Globals.verificationCodeMode ==
                VerificationCodeMode.forgotPassword) {
              ref
                  .read(welcomePageControllerProvider.notifier)
                  .addPage(WelcomePage.newPassword);
            } else {
              // await login();
              Globals.updateInfoMode = UpdateInfoMode.signUp;

              state = state.copyWith(
                formStatus: FormStatus.valid,
              );

              setPageIdle();
            }
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
        Cipher.encrypt(Globals.newEmail!, base64.decode(authKeys.keys.x1));
    final encryptedCode =
        Cipher.encrypt(state.code, base64.decode(authKeys.keys.x2));

    final codeValidationMap = {'email': encryptedEmail, 'code': encryptedCode};

    final encryptedCodeValidationMap =
        Cipher.encryptMapWithBaseKey(codeValidationMap);

    return EncryptedForm(
      hash: authKeys.hash,
      data: encryptedCodeValidationMap,
    );
  }

  void resendCode() async {
    final authRepository = ref.watch(authRepositoryProvider);
    final accountRepository = ref.watch(accountRepositoryProvider);

    if (Globals.newEmail == null) {
      return;
    }

    try {
      final getKeysResult = await authRepository.getKeys();

      getKeysResult.fold((Failure failure) {
        setPageError();
      }, (AuthKeys authKeys) async {
        final encryptedForm = _encryptForgotPasswordForm(authKeys);
        final requestRecoveryResult =
            await accountRepository.requestRecovery(encryptedForm);

        requestRecoveryResult.fold((Failure failure) {
          print(failure);
        }, (Student student) {
          student;
          Globals.studentId = student.id;
        });
      });
    } catch (error) {
      setPageError();
    }
  }

  EncryptedForm _encryptForgotPasswordForm(AuthKeys authKeys) {
    final encryptedEmail =
        Cipher.encrypt(Globals.newEmail!, base64.decode(authKeys.keys.x1));

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
