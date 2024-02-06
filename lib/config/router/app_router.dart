import 'package:go_router/go_router.dart';
import 'package:wabu/features/authentication/presentation/screens/splash_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/terms_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/update_info_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/home/presentation/screens/home_screen.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
import 'package:wabu/features/teachers/presentation/screens/compare_teacher_%20main_screen.dart';
import 'package:wabu/features/teachers/presentation/screens/teacher_comment.dart';
import 'package:wabu/features/teachers/presentation/screens/teacher_profile_view.dart';
import 'package:wabu/features/teachers/presentation/screens/smash_tab_main_screen.dart';
import 'package:wabu/features/teachers/presentation/screens/teacher_rating_step2.dart';
import 'package:wabu/features/teachers/presentation/screens/tinder_view_rating_teacher.dart';
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
          name: SmashTabMainScreen.name,
          path: SmashTabMainScreen.route,
          builder: (context, state) {
            return const SmashTabMainScreen();
          },
        ),
      ],
    ),
     GoRoute(
          name: TinderViewRatingTeacher.name,
          path: TinderViewRatingTeacher.route,
          builder: (context, state) {
            return const TinderViewRatingTeacher();
          },
        ),

      GoRoute(
          name: CompareTeacherMainScreen.name,
          path: CompareTeacherMainScreen.route,
          builder: (context, state) {
            return const CompareTeacherMainScreen();
          },
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
  ],
);
