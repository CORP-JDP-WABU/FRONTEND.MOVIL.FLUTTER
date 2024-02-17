import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/course/data/data.dart';
import 'package:wabu/features/course/domain/course_teacher/course_teacher.dart';
import 'package:wabu/features/course/domain/course_teachers_response/course_teachers_response.dart';
import 'package:wabu/features/course/presentation/controllers/controllers.dart';

part 'course_teachers_controller.g.dart';

@riverpod
class CourseTeachersController extends _$CourseTeachersController {
  @override
  CourseTeachersState build() => const CourseTeachersState();

  void fetchData(String courseId) async {
    try {
      final response =
          await ref.watch(courseRepositoryProvider).getCourseTeachers(courseId);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              courseTeachersStatus: CourseTeachersStatus.error,
            );
            break;
        }
      }, (CourseTeachersResponse courseTeachersResponse) {
        state = state.copyWith(
          courseTeachersResponse: courseTeachersResponse,
          courseTeachersStatus: CourseTeachersStatus.loaded,
        );
      });
    } catch (e) {
      state = state.copyWith(
        courseTeachersStatus: CourseTeachersStatus.error,
      );
    }
  }

  void orderByQualification() {
    final teachers = state.courseTeachersResponse.teachers?.toList();

    teachers?.sort((a, b) => (b.manyAverageQualifications ?? 0)
        .compareTo(a.manyAverageQualifications ?? 0));

    state = state.copyWith(
      courseTeachersResponse:
          state.courseTeachersResponse.copyWith(teachers: teachers),
    );
  }

  double getQualificationValueByCode(CourseTeacher courseTeacher, int code) {
    final requiredQualifications = courseTeacher.requiredQualifications;

    return requiredQualifications
            ?.firstWhere((element) => element.qualification?.code == code)
            .averageQualification ??
        0.0;
  }

  void orderByLearnQualification() {
    final teachers = state.courseTeachersResponse.teachers?.toList();

    teachers?.sort((a, b) => (getQualificationValueByCode(b, 1))
        .compareTo(getQualificationValueByCode(a, 1)));

    state = state.copyWith(
      courseTeachersResponse:
          state.courseTeachersResponse.copyWith(teachers: teachers),
    );
  }

  void orderByHighQualification() {
    final teachers = state.courseTeachersResponse.teachers?.toList();

    teachers?.sort((a, b) => (getQualificationValueByCode(b, 2))
        .compareTo(getQualificationValueByCode(a, 2)));

    state = state.copyWith(
      courseTeachersResponse:
          state.courseTeachersResponse.copyWith(teachers: teachers),
    );
  }

  void orderByGoodQualification() {
    final teachers = state.courseTeachersResponse.teachers?.toList();

    teachers?.sort((a, b) => (getQualificationValueByCode(b, 3))
        .compareTo(getQualificationValueByCode(a, 3)));

    state = state.copyWith(
      courseTeachersResponse:
          state.courseTeachersResponse.copyWith(teachers: teachers),
    );
  }
}
