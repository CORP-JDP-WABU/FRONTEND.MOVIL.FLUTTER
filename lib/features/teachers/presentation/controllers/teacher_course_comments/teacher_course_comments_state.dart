import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

part 'teacher_course_comments_state.freezed.dart';

enum TeacherCourseCommentsStatus { loading, loaded, error, idle }

@freezed
class TeacherCourseCommentsState with _$TeacherCourseCommentsState {
  const factory TeacherCourseCommentsState({
    TeacherCourseComments? teacherCourseComments,
    @Default(TeacherCourseCommentsStatus.loading) pageStatus,
  }) = _TeacherCourseCommentsState;
}