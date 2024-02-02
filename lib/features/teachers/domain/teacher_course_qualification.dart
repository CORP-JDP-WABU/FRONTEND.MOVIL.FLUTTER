import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/qualification.dart';

part 'teacher_course_qualification.freezed.dart';
part 'teacher_course_qualification.g.dart';

@freezed
class TeacherCourseQualification with _$TeacherCourseQualification {
  const factory TeacherCourseQualification({
    double? averageQualification,
    int? countQualifications,
    Qualification? qualification,
  }) = _TeacherCourseQualification;

  factory TeacherCourseQualification.fromJson(Map<String, dynamic> json) => _$TeacherCourseQualificationFromJson(json);
}