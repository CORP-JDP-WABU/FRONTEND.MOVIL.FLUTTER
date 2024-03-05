import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_course_extra.freezed.dart';

@freezed
class TeacherCourseExtra with _$TeacherCourseExtra {
  const factory TeacherCourseExtra({
    required String teacherId,
    required String courseId,
  }) = _TeacherCourseExtra;
}