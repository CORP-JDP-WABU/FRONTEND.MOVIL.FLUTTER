import 'package:go_router/go_router.dart';
import 'package:wabu/features/authentication/presentation/screens/splash_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/terms_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/update_info_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/smash/presentation/screens/teacher_required_rating_screen.dart';
import 'package:wabu/features/home/presentation/screens/home_screen.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
import 'package:wabu/features/search/presentation/presentation.dart';
import 'package:wabu/features/smash/presentation/views/smash_view.dart';
import 'package:wabu/features/smash/presentation/screens/teachers_tinder_screen.dart';
import 'package:wabu/features/smash/presentation/screens/teacher_comment_screen.dart';
import 'package:wabu/features/teachers/presentation/presentation.dart';
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
          name: SearchView.name,
          path: SearchView.route,
          builder: (context, state) {
            return const SearchView();
          },
          routes: [
            GoRoute(
              name: SearchResultView.name,
              path: SearchResultView.route,
              builder: (context, state) {
                return const SearchResultView();
              },
            ),
          ],
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
      name: TeacherCommentScreen.name,
      path: TeacherCommentScreen.route,
      builder: (context, state) {
        return const TeacherCommentScreen();
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
      name: TeacherRequiredRatingScreen.name,
      path: TeacherRequiredRatingScreen.route,
      builder: (context, state) {
        return const TeacherRequiredRatingScreen();
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
