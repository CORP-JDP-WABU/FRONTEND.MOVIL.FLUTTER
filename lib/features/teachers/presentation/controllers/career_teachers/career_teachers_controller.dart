import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/teachers/data/providers.dart';
import 'package:wabu/features/teachers/domain/entities.dart';
import 'package:wabu/features/teachers/presentation/controllers/controllers.dart';

part 'career_teachers_controller.g.dart';

@riverpod
class CareerTeachersController extends _$CareerTeachersController {
  @override
  CareerTeachersState build() {
    fetchData();
    return const CareerTeachersState();
  }

  void fetchData() async {
    try {
      String careerId = Globals.careerId ?? '';

      final getTeacherCourseResponse = await ref
          .watch(teachersRepositoryProvider)
          .getCareerTeachers(careerId);

      getTeacherCourseResponse.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            setPageError();
            break;
        }
      }, (List<CareerTeacherCourse> careerTeacherCourses) {
        state = state.copyWith(
          careerTeacherCourses: careerTeacherCourses,
        );
        setPageLoaded();
      });
    } catch (e) {
      setPageError();
    }
  }

  void setPageLoaded() {
    state = state.copyWith(
      pageStatus: CareerTeachersStatus.loaded,
    );
  }

  void setPageError() {
    state = state.copyWith(
      pageStatus: CareerTeachersStatus.error,
    );
  }

  void setPageIdle() {
    state = state.copyWith(
      pageStatus: CareerTeachersStatus.idle,
    );
  }
}
