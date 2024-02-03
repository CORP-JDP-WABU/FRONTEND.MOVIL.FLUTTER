import 'package:go_router/go_router.dart';
import 'package:wabu/features/authentication/presentation/screens/splash_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/terms_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/update_info_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/compare/presentation/screens/compare_teachers_screen.dart';
import 'package:wabu/features/home/presentation/screens/home_screen.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
import 'package:wabu/features/home/presentation/views/smash_view.dart';
import 'package:wabu/features/smash/presentation/screens/teachers_tinder_screen.dart';
import 'package:wabu/features/teachers/presentation/presentation.dart';
import 'package:wabu/features/teachers/presentation/views/teacher_course_profile_view.dart';

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
    ShellRoute(
      builder: (context, state, child) => HomeScreen(childView: child),
      routes: [
        GoRoute(
          name: HomeView.name,
          path: HomeView.route,
          builder: (context, state) {
            return const HomeView();
          },
        ),
        GoRoute(
          name: TeacherProfileView.name,
          path: TeacherProfileView.route,
          builder: (context, state) {
            return const TeacherProfileView();
          },
        ),
        GoRoute(
          name: SmashView.name,
          path: SmashView.route,
          builder: (context, state) {
            return const SmashView();
          },
        ),
      ],
    ),
    GoRoute(
      name: TeacherCourseComments.name,
      path: TeacherCourseComments.route,
      builder: (context, state) {
        return const TeacherCourseComments();
      },
    ),
    GoRoute(
      name: CompareTeachersScreen.name,
      path: CompareTeachersScreen.route,
      builder: (context, state) {
        return const CompareTeachersScreen();
      },
    ),
    GoRoute(
      name: TeachersTinderScreen.name,
      path: TeachersTinderScreen.route,
      builder: (context, state) {
        return const TeachersTinderScreen();
      },
    ),
  ],
);
