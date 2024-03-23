import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
import 'package:wabu/features/authentication/presentation/widgets/code_validation_content.dart';
import 'package:wabu/features/authentication/presentation/widgets/forgot_password_content.dart';
import 'package:wabu/features/authentication/presentation/widgets/log_in_content.dart';
import 'package:wabu/features/authentication/presentation/widgets/new_password_content.dart';
import 'package:wabu/features/authentication/presentation/widgets/sign_up_content.dart';
import 'package:wabu/utils/utils.dart';

class WelcomeBottomSheet extends ConsumerWidget {
  const WelcomeBottomSheet({super.key});

  Widget getContent(WelcomePage currentPage) {
    switch (currentPage) {
      case WelcomePage.signUp:
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.onBoardRegister,
        );
        return const SignUpContent();
      case WelcomePage.logIn:
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.onBoardLogin,
        );
        return const LogInContent();
      case WelcomePage.forgotPassword:
        return const ForgotPasswordContent();
      case WelcomePage.codeValidation:
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.onBoardValidateEmail,
        );
        return const CodeValidationContent();
      case WelcomePage.newPassword:
        return const NewPasswordContent();
      case WelcomePage.none:
        return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final welcomePageState = ref.watch(welcomePageControllerProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (welcomePageState.currentPage == WelcomePage.none) {
        Navigator.of(context).pop();
      }
    });

    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: getContent(welcomePageState.currentPage),
      ),
    );
  }
}
