import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/student/domain/student/student.dart';
import 'package:wabu/features/home/presentation/controllers/home_view_state.dart';
import 'package:wabu/features/student/data/repositories/providers.dart';

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

      getStudentResponse.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            setPageError();
            break;
        }
      }, (Student student) {
        Globals.universityId = student.idUniversity;
        Globals.careerId = student.idCareer;
        
        setPageLoaded();
      });
    } catch (e) {
      setPageError();
    }
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
