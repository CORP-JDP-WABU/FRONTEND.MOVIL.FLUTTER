import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/widgets/custom_text_form_field.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/authentication/presentation/controllers/log_in/log_in_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
import 'package:wabu/features/authentication/presentation/screens/splash_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/update_info_screen.dart';
import 'package:wabu/features/authentication/presentation/widgets/dialogs/auth_alert_dialog.dart';
import 'package:wabu/features/authentication/presentation/widgets/welcome_bottom_sheet_content.dart';
import 'package:wabu/features/home/presentation/screens/home_screen.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
import 'package:wabu/features/teachers/presentation/screens/teacher_profile_view.dart';

class LogInContent extends ConsumerWidget {
  const LogInContent({super.key});

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AuthAlertDialog(
        title: '¡Bienvenido de vuelta!',
        content:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pretium nunc, ultricies integer. ¿Viverra tellus?',
        onAccept: () {
          context.go(UpdateInfoScreen.route);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logInState = ref.watch(logInControllerProvider);
    final email = logInState.email;
    final password = logInState.password;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (Globals.isFirstLogin == true) {
        context.go(HomeView.route);
        // context.go(TeacherProfileView.route);
      }

      if (Globals.isFirstLogin == false &&
          logInState.formStatus == FormStatus.valid) {
        openDialog(context);
      }

      Globals.email = null;
    });

    return WelcomeBottomSheetContent(
      title: 'Iniciar sesión',
      body:
          'Ingresa tu correo electrónico y contraseña para acceder a tu cuenta',
      textForms: [
        CustomTextFormField(
          obscureText: false,
          initialValue: Globals.email,
          hint: 'Correo Electrónico',
          onChanged: (value) {
            ref.read(logInControllerProvider.notifier).emailChanged(value);
          },
          errorMessage: email.getErrorMessage(),
        ),
        CustomTextFormField(
          obscureText: true,
          hint: 'Contraseña',
          onChanged: (value) {
            ref.read(logInControllerProvider.notifier).passwordChanged(value);
          },
          errorMessage: password.getErrorMessage(),
        ),
      ],
      utilError: logInState.utilError,
      help: '¿Olvidaste tu contraseña?',
      onHelpTap: () {
        ref
            .read(welcomePageControllerProvider.notifier)
            .addPage(WelcomePage.forgotPassword);
      },
      button: 'Entrar',
      onButtonTap: () {
        ref.read(logInControllerProvider.notifier).onSubmit();
      },
      secondaryHelp: '¿No tienes una cuenta?',
      secondaryHighlightedHelp: 'Regístrate',
      onSecondaryHighlightedTap: () {
        ref
            .read(welcomePageControllerProvider.notifier)
            .addPage(WelcomePage.signUp);
      },
    );
  }
}
