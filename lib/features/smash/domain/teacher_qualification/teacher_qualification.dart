// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/smash/domain/domain.dart';

part 'teacher_qualification.freezed.dart';
part 'teacher_qualification.g.dart';

@freezed
class TeacherQualification with _$TeacherQualification {
  @JsonSerializable(explicitToJson: true)
  const factory TeacherQualification({
    @Default(TeacherQualificationRequired())
    TeacherQualificationRequired required,
    @Default(TeacherQualificationOptional())
    TeacherQualificationOptional optional,
  }) = _TeacherQualification;

  factory TeacherQualification.fromJson(Map<String, dynamic> json) =>
      _$TeacherQualificationFromJson(json);
}
