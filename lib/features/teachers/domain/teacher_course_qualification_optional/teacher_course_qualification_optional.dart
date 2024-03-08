import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

part 'teacher_course_qualification_optional.freezed.dart';
part 'teacher_course_qualification_optional.g.dart';

@freezed
class TeacherCourseQualificationOptional with _$TeacherCourseQualificationOptional {
  const factory TeacherCourseQualificationOptional({
    double? averageQualification,
    int? countQualifications,
    Qualification? qualification,
  }) = _TeacherCourseQualificationOptional;

  factory TeacherCourseQualificationOptional.fromJson(Map<String, dynamic> json) => _$TeacherCourseQualificationOptionalFromJson(json);
}
