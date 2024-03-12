import 'package:go_router/go_router.dart';
import 'package:wabu/features/authentication/presentation/screens/splash_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/home/presentation/screens/home_screen.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
import 'package:wabu/features/course/presentation/screens/course_carrousel.dart';
import 'package:wabu/features/search/presentation/presentation.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';
import 'package:wabu/features/teachers/teachers.dart';
import 'package:wabu/features/university/university.dart';
import 'package:wabu/features/update_info/update_info.dart';

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
      name: AddUniversityScreen.name,
      path: AddUniversityScreen.route,
      builder: (context, state) {
        return const AddUniversityScreen();
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
        final teacherCourse = state.extra! as TeacherCourseExtra;
        return TeacherCourseProfileScreen(
          teacherCourse: teacherCourse,
        );
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
        final smashSuggestion = state.extra! as SmashSuggestion;
        return TeacherRequiredRatingScreen(
          smashSuggestion: smashSuggestion,
        );
      },
    ),
    GoRoute(
      name: TeachersTinderScreen.name,
      path: TeachersTinderScreen.route,
      builder: (context, state) {
        return const TeachersTinderScreen();
      },
    ),
    GoRoute(
      name: CourseCarrousel.name,
      path: CourseCarrousel.route,
      builder: (context, state) {
        final courseId = state.extra! as String;
        return CourseCarrousel(
          courseId: courseId,
        );
      },
    ),
    GoRoute(
      name: TeacherProfileScreen.name,
      path: TeacherProfileScreen.route,
      builder: (context, state) {
        final teacherId = state.extra! as String;
        return TeacherProfileScreen(
          teacherId: teacherId,
        );
      },
    ),
  ],
);
