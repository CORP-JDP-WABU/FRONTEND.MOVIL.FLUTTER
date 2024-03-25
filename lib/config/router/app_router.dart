import 'package:go_router/go_router.dart';
import 'package:wabu/features/authentication/presentation/screens/splash_screen.dart';
import 'package:wabu/features/authentication/presentation/screens/welcome_screen.dart';
import 'package:wabu/features/course/course.dart';
import 'package:wabu/features/documents/documents.dart';
import 'package:wabu/features/compare/presentation/presentation.dart';
import 'package:wabu/features/documents/domain/course_documents_parameters/course_documents_parameters.dart';
import 'package:wabu/features/home/presentation/screens/home_screen.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
// import 'package:wabu/features/course/presentation/screens/course_carrousel.dart';
import 'package:wabu/features/search/presentation/presentation.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';
import 'package:wabu/features/teachers/teachers.dart';
import 'package:wabu/features/university/university.dart';
import 'package:wabu/features/update_info/update_info.dart';
import 'package:wabu/utils/utils.dart';

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
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.onBoardWelcome,
        );

        return WelcomeScreen();
      },
    ),
    GoRoute(
      name: UpdateInfoScreen.name,
      path: UpdateInfoScreen.route,
      builder: (context, state) {
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.onBoardUserInfo,
        );

        return const UpdateInfoScreen();
      },
    ),
    GoRoute(
      name: AddUniversityScreen.name,
      path: AddUniversityScreen.route,
      builder: (context, state) {
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.onBoardAddUniversity,
        );

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
            FirebaseAnalyticsHandler.instance.logScreenView(
              analyticsScreen: AnalyticsScreen.homeMainScreen,
            );

            return const HomeView();
          },
        ),
        GoRoute(
          name: SearchView.name,
          path: SearchView.route,
          builder: (context, state) {
            FirebaseAnalyticsHandler.instance.logScreenView(
              analyticsScreen: AnalyticsScreen.searchMainScreen,
            );

            return const SearchView();
          },
          routes: [
            GoRoute(
              name: SearchResultView.name,
              path: SearchResultView.route,
              builder: (context, state) {
                FirebaseAnalyticsHandler.instance.logScreenView(
                  analyticsScreen: AnalyticsScreen.searchTeacherList,
                );

                return const SearchResultView();
              },
            ),
            GoRoute(
              name: CourseProfileView.name,
              path: CourseProfileView.route,
              builder: (context, state) {
                final courseId = state.extra! as String;

                return CourseProfileView(
                  courseId: courseId,
                );
              },
            ),
            GoRoute(
              name: CourseDocumentsView.name,
              path: CourseDocumentsView.route,
              builder: (context, state) {
                final courseDocumentsParameters = state.extra! as CourseDocumentsParameters;
                return CourseDocumentsView(
                  courseDocumentsParameters: courseDocumentsParameters,
                );
              },
            ),
          ],
        ),
        GoRoute(
          name: SmashView.name,
          path: SmashView.route,
          builder: (context, state) {
            FirebaseAnalyticsHandler.instance.logScreenView(
              analyticsScreen: AnalyticsScreen.smashMainScreen,
            );

            return const SmashView();
          },
        ),
      ],
    ),
    GoRoute(
      name: TeacherRaitingStep2Screen.name,
      path: TeacherRaitingStep2Screen.route,
      builder: (context, state) {
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.smashStep2,
        );

        return const TeacherRaitingStep2Screen();
      },
    ),
    GoRoute(
      name: TeacherCommentScreen.name,
      path: TeacherCommentScreen.route,
      builder: (context, state) {
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.smashComment,
        );

        return const TeacherCommentScreen();
      },
    ),
    GoRoute(
      name: TeacherCourseProfileScreen.name,
      path: TeacherCourseProfileScreen.route,
      builder: (context, state) {
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.searchTeacherCourseProfile,
        );

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
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.searchTeacherComments,
        );

        return const TeacherCourseCommentsScreen();
      },
    ),
    GoRoute(
      name: TeacherRequiredRatingScreen.name,
      path: TeacherRequiredRatingScreen.route,
      builder: (context, state) {
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.smashStep1,
        );

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
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.smashTinderSwipe,
        );

        return const TeachersTinderScreen();
      },
    ),
    GoRoute(
      name: CourseCarrousel.name,
      path: CourseCarrousel.route,
      builder: (context, state) {
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.searchCourseCarrousel,
        );

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
        FirebaseAnalyticsHandler.instance.logScreenView(
          analyticsScreen: AnalyticsScreen.searchTeacherProfile,
        );

        final teacherId = state.extra! as String;
        return TeacherProfileScreen(
          teacherId: teacherId,
        );
      },
    ),
    GoRoute(
      name: CompareWelcomeScreen.name,
      path: CompareWelcomeScreen.route,
      builder: (context, state) {
        return const CompareWelcomeScreen();
      },
    ),
    GoRoute(
      name: CompareSearchScreen.name,
      path: CompareSearchScreen.route,
      builder: (context, state) {
        return const CompareSearchScreen();
      },
    ),
    GoRoute(
      name: CompareTeachers.name,
      path: CompareTeachers.route,
      builder: (context, state) {
        final selectedTeacherIds = state.extra! as List<String>;
        return CompareTeachers(
          selectedTeacherIds: selectedTeacherIds,
        );
      },
    ),
  ],
);
