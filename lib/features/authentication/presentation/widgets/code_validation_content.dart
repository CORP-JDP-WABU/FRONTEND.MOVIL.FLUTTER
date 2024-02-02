import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/presentation/controllers/code_validation/code_validation_controller.dart';
import 'package:wabu/features/authentication/presentation/screens/update_info_screen.dart';
import 'package:wabu/features/authentication/presentation/widgets/welcome_bottom_sheet_content.dart';

class CodeValidationContent extends ConsumerWidget {
  const CodeValidationContent({super.key});

  // void openDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (context) => AuthAlertDialog(
  //       title: 'Este correo no está registrado',
  //       content: 'Puedes crear una cuenta con este correo',
  //       onAccept: () {
  //         context.pop();
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codeValidationState = ref.watch(codeValidationControllerProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (codeValidationState.formStatus == FormStatus.valid) {
        if (Globals.verificationCodeMode == VerificationCodeMode.signUp) {
          context.go(UpdateInfoScreen.route);
          return;
        }
      }
    });

    return WelcomeBottomSheetContent(
        title: 'Revisa tu correo',
        body: 'Te enviamos un código de verificación a tu correo electrónico',
        pinCodeInput: PinCodeTextField(
          appContext: context,
          length: 6,
          textStyle: const TextStyle(color: AppTheme.primaryText),
          keyboardType: TextInputType.number,
          enableActiveFill: true,
          cursorColor: AppTheme.primaryText,
          dialogConfig: DialogConfig(
            dialogTitle: 'Copiar Código',
            dialogContent: '¿Quieres copiar este código ',
            affirmativeText: 'Copiar',
            negativeText: 'Cancelar',
          ),
          pinTheme: PinTheme(
            activeColor: (codeValidationState.formStatus != FormStatus.invalid)
                ? AppTheme.inputBackgroundColor
                : Colors.red,
            selectedColor: AppTheme.inputBackgroundColor,
            inactiveColor: AppTheme.inputBackgroundColor,
            disabledColor: AppTheme.inputBackgroundColor,
            activeFillColor: AppTheme.inputBackgroundColor,
            selectedFillColor: AppTheme.inputBackgroundColor,
            inactiveFillColor: AppTheme.inputBackgroundColor,
            borderRadius: BorderRadius.circular(5),
            shape: PinCodeFieldShape.box,
          ),
          onChanged: (value) {
            ref
                .read(codeValidationControllerProvider.notifier)
                .codeChanged(value);
          },
          // beforeTextPaste: (text) {
          //   return false;
          // },
        ),
        utilError: codeValidationState.utilError,
        help: 'Reenviar código',
        onHelpTap: () {
          ref.read(codeValidationControllerProvider.notifier).resendCode();
        },
        button: 'Continuar',
        onButtonTap: () {
          ref.read(codeValidationControllerProvider.notifier).onSubmit();
          // ref.read(forgotPasswordControllerProvider.notifier).onSubmit();
          // submit Form
          // ref.read(welcomePageControllerProvider.notifier).addPage(WelcomePage.codeValidation);
        });
  }
}