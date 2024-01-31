import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/widgets/custom_text_form_field.dart';
import 'package:wabu/features/authentication/presentation/controllers/forgot_password/forgot_password_controller.dart';
import 'package:wabu/features/authentication/presentation/widgets/dialogs/auth_alert_dialog.dart';
import 'package:wabu/features/authentication/presentation/widgets/welcome_bottom_sheet_content.dart';

class ForgotPasswordContent extends ConsumerWidget {
  const ForgotPasswordContent({super.key});

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AuthAlertDialog(
        title: 'Este correo no está registrado',
        content: 'Puedes crear una cuenta con este correo',
        onAccept: () {
          context.pop();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forgotPasswordState = ref.watch(forgotPasswordControllerProvider);
    final email = forgotPasswordState.email;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (forgotPasswordState.formStatus == FormStatus.invalid) {
        openDialog(context);
      }
    });

    return WelcomeBottomSheetContent(
      title: '¿Olvidaste tu contraseña?',
      body: '¡No te preocupes! Nos pasa a todos. Ingresa tu correo y te ayudaremos.',
      textForms: [
        CustomTextFormField(
          obscureText: false,
          hint: 'Correo Electrónico',
          onChanged: (value) {
            ref.read(forgotPasswordControllerProvider.notifier).emailChanged(value);
          },
          errorMessage: email.getErrorMessage(),
        ),
      ],
      // help: '¿No puedes acceder a tu correo?',
      // onHelpTap: () {},
      button: 'Continuar',
      onButtonTap: () {
        ref.read(forgotPasswordControllerProvider.notifier).onSubmit();
        // submit Form
        // ref.read(welcomePageControllerProvider.notifier).addPage(WelcomePage.codeValidation);
      },
    );
  }
}
