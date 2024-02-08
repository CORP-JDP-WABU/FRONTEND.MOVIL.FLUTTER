import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/home/data/data.dart';
import 'package:wabu/features/home/domain/domain.dart';
import 'package:wabu/features/home/presentation/controllers/controllers.dart';
import 'package:wabu/features/student/domain/student/student.dart';
import 'package:wabu/features/student/data/repositories/providers.dart';
import 'package:wabu/utils/logger.dart';

part 'home_view_controller.g.dart';

@riverpod
class HomeViewController extends _$HomeViewController {
  @override
  HomeViewState build() {
    fetchData();
    return const HomeViewState();
  }

  void fetchData() async {
    try {
      String studentId = Globals.studentId ?? '';

      final getStudentResponse =
          await ref.watch(studentRepositoryProvider).getStudent(studentId);

      logger.d(getStudentResponse);

      getStudentResponse.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            setPageError();
            break;
        }
      }, (Student student) {
        Globals.universityId = student.idUniversity;
        Globals.careerId = student.idCareer;

        state = state.copyWith(
          student: student,
        );

        fetchDashboardData();
      });
    } catch (e) {
      setPageError();
    }
  }

  void fetchDashboardData() async {
    String studentId = Globals.studentId ?? '';
    String universityId = Globals.universityId ?? '';

    final dashboardResponse = await ref
        .watch(dashboardRepositoryProvider)
        .getStudentDashboard(universityId, studentId);

    logger.d(dashboardResponse);

    dashboardResponse.fold((Failure failure) {
      switch (failure.errorCode) {
        default:
          setPageError();
          break;
      }
    }, (HomeDashboard homeDashboard) {
      state = state.copyWith(
        homeDashboard: homeDashboard,
      );

      setPageLoaded();
    });
  }

  void setPageLoading() {
    state = state.copyWith(
      pageStatus: HomeViewStatus.loading,
    );
  }

  void setPageLoaded() {
    state = state.copyWith(
      pageStatus: HomeViewStatus.loaded,
    );
  }

  void setPageError() {
    state = state.copyWith(
      pageStatus: HomeViewStatus.error,
    );
  }

  void setPageIdle() {
    state = state.copyWith(
      pageStatus: HomeViewStatus.idle,
    );
  }
}
