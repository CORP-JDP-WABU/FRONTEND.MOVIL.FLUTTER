import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/teachers/data/providers.dart';
import 'package:wabu/features/teachers/domain/entities.dart';
import 'package:wabu/features/teachers/presentation/controllers/controllers.dart';

part 'teacher_course_profile_controller.g.dart';

@riverpod
class TeacherProfileController extends _$TeacherProfileController {
  @override
  TeacherCourseProfileState build() => const TeacherCourseProfileState();

  void fetchData(String teacherId, String courseId) async {
    try {
      Globals.teacherId = teacherId;
      Globals.courseId = courseId;

      final getTeacherCourseResponse = await ref
          .watch(teachersRepositoryProvider)
          .getTeacherCourse(teacherId, courseId);

      getTeacherCourseResponse.fold((Failure failure) {
        switch (failure.errorCode) {
          case 'NOTFOUND_TEACHER':
            setPageLoaded();
            break;
          case 'NOTFOUND_COURSE_TEACHER':
            setPageLoaded();
            break;
          default:
            setPageError();
            break;
        }
      }, (Teacher teacher) {
        state = state.copyWith(
          teacher: teacher,
        );
        setPageLoaded();
      });
    } catch (e) {
      setPageError();
    }
  }

  void setPageLoaded() {
    state = state.copyWith(
      pageStatus: TeacherCourseProfileStatus.loaded,
    );
  }

  void setPageError() {
    state = state.copyWith(
      pageStatus: TeacherCourseProfileStatus.error,
    );
  }

  void setPageIdle() {
    state = state.copyWith(
      pageStatus: TeacherCourseProfileStatus.idle,
    );
  }
}
