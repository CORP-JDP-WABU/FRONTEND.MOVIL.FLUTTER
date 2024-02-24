import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wabu/constants/globals.dart';
// import 'package:lottie/lottie.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/authentication/presentation/widgets/video_background.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';

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
    Future.delayed(const Duration(seconds: 8), () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      final studentId = prefs.getString('studentId');
      final universityId = prefs.getString('universityId');

      if (!context.mounted) return;

      if (token == null) {
        context.go(WelcomeScreen.route);
        return;
      }

      Globals.token = token;
      Globals.studentId = studentId;
      Globals.universityId = universityId;

      context.go(HomeView.route);
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
