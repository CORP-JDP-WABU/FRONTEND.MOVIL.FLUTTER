import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

part 'teacher_course_qualification_required.freezed.dart';
part 'teacher_course_qualification_required.g.dart';

@freezed
class TeacherCourseQualificationRequired
    with _$TeacherCourseQualificationRequired {
  const factory TeacherCourseQualificationRequired({
    double? averageQualification,
    Qualification? qualification,
  }) = _TeacherCourseQualificationRequired;

  factory TeacherCourseQualificationRequired.fromJson(
          Map<String, dynamic> json) =>
      _$TeacherCourseQualificationRequiredFromJson(json);
}
