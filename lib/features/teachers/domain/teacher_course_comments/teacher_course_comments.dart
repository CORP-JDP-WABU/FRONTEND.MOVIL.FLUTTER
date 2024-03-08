import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

part 'teacher_course_comments.freezed.dart';
part 'teacher_course_comments.g.dart';

@freezed
class TeacherCourseComments with _$TeacherCourseComments {
  const factory TeacherCourseComments({
    String? idUniversity,
    String? idTeacher,
    String? idCourse,
    List<TeacherCourseStudentComment>? students,
  }) = _TeacherCourseComments;

  factory TeacherCourseComments.fromJson(Map<String, dynamic> json) =>
      _$TeacherCourseCommentsFromJson(json);
}
