import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:lottie/lottie.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/authentication/presentation/widgets/video_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = 'splash_screen';
  static const String route = '/$name';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();

    // gifController = GifController(
    //   onStart: () {
    Future.delayed(const Duration(seconds: 8), () {
      context.go(WelcomeScreen.route);
    });
    //   },
    // );
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
          // Lottie.asset('assets/images/splash.json')
          Image.asset('assets/images/splash.gif'),
        ],
      ),
    );
  }
}
