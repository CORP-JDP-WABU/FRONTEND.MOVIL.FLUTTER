import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/teachers/data/providers.dart';
import 'package:wabu/features/teachers/domain/entities.dart';
import 'package:wabu/features/teachers/presentation/controllers/controllers.dart';

part 'teacher_course_comments_controller.g.dart';

@riverpod
class TeacherCourseCommentsController
    extends _$TeacherCourseCommentsController {
  @override
  TeacherCourseCommentsState build() {
    fetchData();
    return const TeacherCourseCommentsState();
  }

  void fetchData() async {
    try {
      String teacherId = Globals.teacherId ?? '';
      String courseId = Globals.courseId ?? '';

      final getTeacherCourseResponse = await ref
          .watch(teachersRepositoryProvider)
          .getCommentsOfTeacherCourse(teacherId, courseId);

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
      }, (TeacherCourseComments teacherCourseComments) {
        state = state.copyWith(
          teacherCourseComments: teacherCourseComments,
        );
        setPageLoaded();
      });
    } catch (e) {
      setPageError();
    }
  }

  void setPageLoaded() {
    state = state.copyWith(
      pageStatus: TeacherCourseCommentsStatus.loaded,
    );
  }

  void setPageError() {
    state = state.copyWith(
      pageStatus: TeacherCourseCommentsStatus.error,
    );
  }

  void setPageIdle() {
    state = state.copyWith(
      pageStatus: TeacherCourseCommentsStatus.idle,
    );
  }
}
