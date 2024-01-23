import 'package:go_router/go_router.dart';
import 'package:wabu/features/authentication/presentation/screens/splash_screen.dart';

final appRouter = GoRouter(
  initialLocation: SplashScreen.route,
  routes: [
    GoRoute(
      name: SplashScreen.name,
      path: SplashScreen.route,
      builder: (context, state) {
        return const SplashScreen();
      },
    ),
  ],
);
