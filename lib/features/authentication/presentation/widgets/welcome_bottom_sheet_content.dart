import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/common/widgets/custom_text_form_field.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
import 'package:wabu/features/authentication/presentation/widgets/welcome_input_section.dart';

class WelcomeBottomSheetContent extends ConsumerWidget {
  final String title;
  final String? body;
  final List<CustomTextFormField>? textForms;
  final PinCodeTextField? pinCodeInput;
  final String? utilError;
  final String? help;
  final Function()? onHelpTap;
  final String button;
  final Function()? onButtonTap;
  final String? secondaryHelp;
  final String? secondaryHighlightedHelp;
  final Function()? onSecondaryHighlightedTap;

  const WelcomeBottomSheetContent({
    super.key,
    required this.title,
    this.body,
    this.textForms,
    this.pinCodeInput,
    this.utilError,
    this.help,
    this.onHelpTap,
    required this.button,
    this.onButtonTap,
    this.secondaryHelp,
    this.secondaryHighlightedHelp,
    this.onSecondaryHighlightedTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final welcomePageState = ref.watch(welcomePageControllerProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (welcomePageState.status == WelcomeStatus.error) {
        ref
            .read(welcomePageControllerProvider.notifier)
            .setPageStatus(WelcomeStatus.idle);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrión un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
      }

      // Globals.email = null;
    });

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () =>
                ref.read(welcomePageControllerProvider.notifier).popPage(),
            child: const CustomBackButton(),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: AppTheme.primaryText,
                fontSize: 30,
                fontWeight: FontWeight.w400,
                height: 36 / 30,
                fontFamily: 'GothamRounded',
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (body != null) ...[
            Text(
              body!,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: AppTheme.bodyTextColor,
                fontSize: 17,
                fontWeight: FontWeight.w400,
                height: 20 / 17,
              ),
            ),
            const SizedBox(height: 24),
          ],
          if (textForms != null) WelcomeInputSection(textForms: textForms!),
          if (pinCodeInput != null)
            Container(
              child: pinCodeInput,
            ),
          if (utilError != null)
            Text(
              utilError!,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 12,
              ),
            ),
          const SizedBox(height: 20),
          if (help != null)
            Column(
              children: [
                GestureDetector(
                  onTap: onHelpTap,
                  child: Text(
                    help!,
                    style: const TextStyle(
                      color: AppTheme.boldSkyBlue,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      height: 16 / 13,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          CustomFilledButton(
            onPressed: onButtonTap,
            text: button,
            minimumWidth: 256,
            textColor: Colors.white,
            linearGradient: const LinearGradient(
              colors: [
                AppTheme.linearGradientLight,
                AppTheme.linearGradientDark
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (secondaryHelp != null)
                Text(
                  secondaryHelp!,
                  style: const TextStyle(
                    color: AppTheme.secondaryBodyTextColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    height: 20 / 17,
                  ),
                ),
              if (secondaryHelp != null && secondaryHighlightedHelp != null)
                const SizedBox(width: 5),
              if (secondaryHighlightedHelp != null)
                GestureDetector(
                  onTap: onSecondaryHighlightedTap,
                  child: Text(
                    secondaryHighlightedHelp!,
                    style: const TextStyle(
                      color: AppTheme.skyblue,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      height: 20 / 17,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
