import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_controller.dart';
import 'package:wabu/features/authentication/presentation/controllers/welcome_page/welcome_page_state.dart';
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
    final welcomePageState = ref.watch(welcomePageControllerProvider);

    return Stack(
      children: [
        Scaffold(
          key: scaffoldKey,
          body: Stack(
            children: [
              const VideoBackground(),
              _WelcomeScreenContent(showBottomSheet: _showBottomSheet),
            ],
          ),
        ),
        if (welcomePageState.status == WelcomeStatus.posting)
          const LoaderTransparent(),
      ],
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
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 0.6 * screenWidth,
              width: 0.6 * screenWidth,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const Text(
          'Potenciando tu\nexperiencia universitaria',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GothamRounded',
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 60),
        CustomFilledButton(
          onPressed: () {
            ref
                .read(welcomePageControllerProvider.notifier)
                .addPage(WelcomePage.logIn);
            showBottomSheet();
          },
          text: 'INICIAR SESIÓN',
          minimumWidth: 0.8 * screenWidth,
          textColor: AppTheme.primaryText,
          backgroundColor: const Color.fromRGBO(255, 255, 255, 0.9),
          boxShadow:  [
            const BoxShadow(
              color: Colors.black,
              spreadRadius: -30,
              blurRadius: 60,
              offset: Offset(0, 0),
            ),
            BoxShadow(
                 color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
            )
          ],
        ),
        const SizedBox(height: 36),
        CustomFilledButton(
          onPressed: () {
            ref
                .read(welcomePageControllerProvider.notifier)
                .addPage(WelcomePage.signUp);
            showBottomSheet();
          },
          text: 'CREAR UNA CUENTA',
          minimumWidth: 0.8 * screenWidth,
          textColor: Colors.white,
          linearGradient: const LinearGradient(
            colors: [
              AppTheme.linearGradientDark,
              AppTheme.statsColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        const SizedBox(height: 72)
      ],
    );
  }
}
