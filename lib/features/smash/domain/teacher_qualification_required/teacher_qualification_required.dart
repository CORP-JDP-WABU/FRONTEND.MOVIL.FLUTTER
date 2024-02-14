import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_qualification_required.freezed.dart';
part 'teacher_qualification_required.g.dart';

@freezed
class TeacherQualificationRequired with _$TeacherQualificationRequired {
  @JsonSerializable(explicitToJson: true)
  const factory TeacherQualificationRequired({
    @Default(0) int learn,
    @Default(0) int hight,
    @Default(0) int goodPeople,
  }) = _TeacherQualificationRequired;

  factory TeacherQualificationRequired.fromJson(Map<String, dynamic> json) =>
      _$TeacherQualificationRequiredFromJson(json);
}
