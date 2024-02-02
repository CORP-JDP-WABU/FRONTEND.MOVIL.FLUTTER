import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/teachers/data/providers.dart';
import 'package:wabu/features/teachers/domain/teacher.dart';
import 'package:wabu/features/teachers/presentation/controllers/teacher_profile/teacher_profile_state.dart';

part 'teacher_profile_controller.g.dart';

@riverpod
class TeacherProfileController extends _$TeacherProfileController {
  @override
  TeacherProfileState build() {
    fetchData();
    return const TeacherProfileState();
  }

  void fetchData() async {
    try {
      // String teacherId = '5dd57e3dd0ac9a582760ec66';
      // String courseId = '5dd57e49d0ac9a582761859b';

      String teacherId = '5dd57e3ed0ac9a582760eef2';
      String courseId = '5dd57e48d0ac9a58276158cd';
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
        state = state.copyWith(teacher: teacher);
        setPageLoaded();
      });
    } catch (e) {
      setPageError();
    }
  }

  void setPageLoaded() {
    state = state.copyWith(
      pageStatus: Status.loaded,
    );
  }

  void setPageError() {
    state = state.copyWith(
      pageStatus: Status.error,
    );
  }

  void setPageIdle() {
    state = state.copyWith(
      pageStatus: Status.idle,
    );
  }
}
