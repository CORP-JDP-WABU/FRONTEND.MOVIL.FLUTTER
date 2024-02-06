import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/smash/domain/domain.dart';

part 'teacher_qualification.freezed.dart';
part 'teacher_qualification.g.dart';

@freezed
class TeacherQualification with _$TeacherQualification {
  const factory TeacherQualification({
    @Default(TeacherQualificationRequired())
    TeacherQualificationRequired teacherQualificationRequired,
    @Default(TeacherQualificationOptional())
    TeacherQualificationOptional teacherQualificationOptional,
  }) = _TeacherQualification;

  factory TeacherQualification.fromJson(Map<String, dynamic> json) =>
      _$TeacherQualificationFromJson(json);
}
