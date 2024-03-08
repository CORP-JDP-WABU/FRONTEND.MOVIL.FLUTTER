import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_course_student_comment.freezed.dart';
part 'teacher_course_student_comment.g.dart';

@freezed
class TeacherCourseStudentComment with _$TeacherCourseStudentComment {
  const factory TeacherCourseStudentComment(
    List<String>? likes,
    List<String>? dislikes,
    String? photoUrl,
    String? fullName,
    String? comment,
    String? createdAtString,
  ) = _TeacherCourseStudentComment;

  factory TeacherCourseStudentComment.fromJson(Map<String, dynamic> json) =>
      _$TeacherCourseStudentCommentFromJson(json);
}
