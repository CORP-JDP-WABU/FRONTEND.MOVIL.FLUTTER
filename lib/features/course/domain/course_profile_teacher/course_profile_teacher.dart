import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_profile_teacher.freezed.dart';
part 'course_profile_teacher.g.dart';

@freezed
class CourseProfileTeacher with _$CourseProfileTeacher {
  const factory CourseProfileTeacher({
    @Default('') String idTeacher,
    @Default('') String firstName,
    @Default(0) double averageQualification,
  }) = _CourseProfileTeacher;

  factory CourseProfileTeacher.fromJson(Map<String, dynamic> json) =>
      _$CourseProfileTeacherFromJson(json);
}
