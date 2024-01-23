import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gif_view/gif_view.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/authentication/presentation/widgets/video_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = 'splash_screen';
  static const String route = '/$name';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late GifController gifController;

  @override
  void initState() {
    super.initState();

    gifController = GifController(
      onStart: () {
        Future.delayed(const Duration(seconds: 6), () {
          context.go(WelcomeScreen.route);
        });
      },
    );

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/static_background.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const VideoBackground(),
          GifView.asset(
            'assets/images/splash.gif',
            frameRate: 36,
            controller: gifController,
          ),
        ],
      ),
    );
  }
}
