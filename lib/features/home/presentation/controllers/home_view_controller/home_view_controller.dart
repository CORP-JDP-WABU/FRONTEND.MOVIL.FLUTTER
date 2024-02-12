import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/home/data/data.dart';
import 'package:wabu/features/home/domain/domain.dart';
import 'package:wabu/features/home/presentation/presentation.dart';
import 'package:wabu/features/student/domain/domain.dart';
import 'package:wabu/features/student/data/repositories/providers.dart';

part 'home_view_controller.g.dart';

@riverpod
class HomeViewController extends _$HomeViewController {
  @override
  HomeViewState build() {
    fetchData();
    return const HomeViewState();
  }

  Future<void> fetchData() async {
    try {
      String studentId = Globals.studentId ?? '';

      final response =
          await ref.watch(studentRepositoryProvider).getStudent(studentId);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              homeStatus: HomeStatus.error,
            );
            break;
        }
      }, (Student student) async {
        Globals.universityId = student.idUniversity;
        Globals.careerId = student.idCareer;

        state = state.copyWith(
          student: student,
        );

        await fetchDashboardData(student);
      });
    } catch (e) {
      state = state.copyWith(
        homeStatus: HomeStatus.error,
      );
    }
  }

  Future<void> fetchDashboardData(Student student) async {
    try {
      String studentId = student.idStudent;
      String universityId = student.idUniversity;

      final response = await ref
          .watch(dashboardRepositoryProvider)
          .getStudentDashboard(universityId, studentId);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              homeStatus: HomeStatus.error,
            );
            break;
        }
      }, (HomeDashboard homeDashboard) {
        state = state.copyWith(
          homeDashboard: homeDashboard,
          homeStatus: HomeStatus.loaded,
        );
      });
    } catch (e) {
      state = state.copyWith(
        homeStatus: HomeStatus.error,
      );
    }
  }
}
