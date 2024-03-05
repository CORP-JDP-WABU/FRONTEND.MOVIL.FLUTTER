import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/widgets/custom_text_form_field.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/presentation/controllers/sign_up/sign_up_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
import 'package:wabu/features/authentication/presentation/widgets/dialogs/auth_alert_dialog.dart';
import 'package:wabu/features/authentication/presentation/widgets/welcome_bottom_sheet_content.dart';

class SignUpContent extends ConsumerWidget {
  const SignUpContent({super.key});

  void openDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AuthAlertDialog(
        title: 'Cuenta ya registrada',
        content: 'Por favor usa el correo para iniciar sesión o crea uno nuevo',
        onAccept: () {
          context.pop();
          ref.read(welcomePageControllerProvider.notifier).addPage(WelcomePage.logIn);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpState = ref.watch(signUpControllerProvider);
    final email = signUpState.email;
    final password = signUpState.password;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (signUpState.formStatus == FormStatus.invalid) {
        openDialog(context, ref);
      }

      Globals.newEmail = null;
    });

    return WelcomeBottomSheetContent(
      title: 'Crea una cuenta',
      body: 'Completa la información para crear tu cuenta y continuar',
      textForms: [
        CustomTextFormField(
          initialValue: Globals.newEmail,
          obscureText: false,
          hint: 'Correo Electrónico',
          onChanged: (value) {
            ref.read(signUpControllerProvider.notifier).emailChanged(value);
          },
          errorMessage: email.getErrorMessage(),
        ),
        CustomTextFormField(
          obscureText: true,
          hint: 'Contraseña',
          onChanged: (value) {
            ref.read(signUpControllerProvider.notifier).passwordChanged(value);
          },
          errorMessage: password.getErrorMessage(),
        ),
      ],
      button: 'Crear cuenta',
      onButtonTap: () {
        ref.read(signUpControllerProvider.notifier).onSubmit();
      },
      secondaryHelp: '¿Ya tienes una cuenta?',
      secondaryHighlightedHelp: 'Ingresa',
      onSecondaryHighlightedTap: () {
        ref.read(welcomePageControllerProvider.notifier).addPage(WelcomePage.logIn);
      },
    );
  }
}
