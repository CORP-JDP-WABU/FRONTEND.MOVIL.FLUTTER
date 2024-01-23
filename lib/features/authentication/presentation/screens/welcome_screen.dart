import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/widgets/video_background.dart';
import 'package:wabu/features/authentication/presentation/widgets/welcome_bottom_sheet.dart';

class WelcomeScreen extends ConsumerWidget {
  WelcomeScreen({super.key});

  static const String name = 'welcome_screen';
  static const String route = '/$name';

  final scaffoldKey = GlobalKey<ScaffoldState>();

  void _showBottomSheet() {
    scaffoldKey.currentState?.showBottomSheet((context) {
      return const WelcomeBottomSheet();
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          const VideoBackground(),
          _WelcomeScreenContent(showBottomSheet: _showBottomSheet),
        ],
      ),
    );
  }
}

class _WelcomeScreenContent extends ConsumerWidget {
  const _WelcomeScreenContent({
    required this.showBottomSheet,
  });

  final void Function() showBottomSheet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 220,
              width: 220,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const Text(
          '“Potenciando tu\nexperiencia universitaria”',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GothamRounded',
            fontSize: 23,
            height: 31 / 23,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 65),
        CustomFilledButton(
          onPressed: () {
            ref.read(welcomePageControllerProvider.notifier).addPage(WelcomePage.logIn);
            showBottomSheet();
          },
          text: 'INICIAR SESIÓN',
          minimumWidth: 300,
          textColor: AppTheme.primaryText,
          backgroundColor: Colors.white,
          overlayColor: Colors.black12,
          maximumWidthMargins: 44,
        ),
        const SizedBox(height: 40),
        CustomFilledButton(
          onPressed: () {
            ref.read(welcomePageControllerProvider.notifier).addPage(WelcomePage.signUp);
            showBottomSheet();
          },
          text: 'CREAR UNA CUENTA',
          minimumWidth: 300,
          textColor: AppTheme.primaryText,
          backgroundColor: Colors.white,
          overlayColor: Colors.black12,
          maximumWidthMargins: 44,
        ),
        const SizedBox(height: 116)
      ],
    );
  }
}
