import 'package:go_router/go_router.dart';
import 'package:wabu/features/authentication/presentation/screens/splash_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/terms_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/update_info_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/home/presentation/screens/home_screen.dart';
// import 'package:wabu/features/teachers/presentation/screens/teacher_profile_screen.dart';

final appRouter = GoRouter(
  initialLocation: SplashScreen.route,
  // initialLocation: UpdateInfoScreen.route,
  // initialLocation: TermsScreen.route,
  // initialLocation: TeacherProfileScreen.route,
  routes: [
    GoRoute(
      name: SplashScreen.name,
      path: SplashScreen.route,
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      name: WelcomeScreen.name,
      path: WelcomeScreen.route,
      builder: (context, state) {
        return WelcomeScreen();
      },
    ),
    GoRoute(
      name: UpdateInfoScreen.name,
      path: UpdateInfoScreen.route,
      builder: (context, state) {
        return const UpdateInfoScreen();
      },
    ),
    GoRoute(
      name: TermsScreen.name,
      path: TermsScreen.route,
      builder: (context, state) {
        return const TermsScreen();
      },
    ),
    GoRoute(
      name: HomeScreen.name,
      path: HomeScreen.route,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    // GoRoute(
    //   name: TeacherProfileScreen.name,
    //   path: TeacherProfileScreen.route,
    //   builder: (context, state) {
    //     return const TeacherProfileScreen();
    //   },
    // ),
  ],
);
