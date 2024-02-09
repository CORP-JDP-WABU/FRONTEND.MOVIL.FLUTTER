import 'package:go_router/go_router.dart';
import 'package:wabu/features/authentication/presentation/screens/splash_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/terms_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/update_info_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/smash/presentation/screens/compare_teachers_screen.dart';
import 'package:wabu/features/home/presentation/screens/home_screen.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
import 'package:wabu/features/smash/presentation/views/smash_view.dart';
import 'package:wabu/features/smash/presentation/screens/teachers_tinder_screen.dart';
import 'package:wabu/features/smash/presentation/screens/teacher_comment.dart';
import 'package:wabu/features/teachers/presentation/presentation.dart';
import 'package:wabu/features/teachers/presentation/views/temporal_teachers_view.dart';
import 'package:wabu/features/smash/presentation/screens/teacher_rating_step2.dart';

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
          name: TemporalTeachersView.name,
          path: TemporalTeachersView.route,
          builder: (context, state) {
            return const TemporalTeachersView();
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
      name: TeacherRaitingStep2Screen.name,
      path: TeacherRaitingStep2Screen.route,
      builder: (context, state) {
        return const TeacherRaitingStep2Screen();
      },
    ),
    GoRoute(
      name: TeacherComment.name,
      path: TeacherComment.route,
      builder: (context, state) {
        return const TeacherComment();
      },
    ),
    GoRoute(
      name: TeacherCourseProfileScreen.name,
      path: TeacherCourseProfileScreen.route,
      builder: (context, state) {
        return const TeacherCourseProfileScreen();
      },
    ),
    GoRoute(
      name: TeacherCourseCommentsScreen.name,
      path: TeacherCourseCommentsScreen.route,
      builder: (context, state) {
        return const TeacherCourseCommentsScreen();
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
