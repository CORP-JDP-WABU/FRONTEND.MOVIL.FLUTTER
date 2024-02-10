import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_qualification_optional.freezed.dart';
part 'teacher_qualification_optional.g.dart';

@freezed
class TeacherQualificationOptional with _$TeacherQualificationOptional {
  const factory TeacherQualificationOptional({
    @Default(0) int worked,
    @Default(0) int late,
    @Default(0) int assistance,
  }) = _TeacherQualificationOptional;

  factory TeacherQualificationOptional.fromJson(Map<String, dynamic> json) =>
      _$TeacherQualificationOptionalFromJson(json);
}
