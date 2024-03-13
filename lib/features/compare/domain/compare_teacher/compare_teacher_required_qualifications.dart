import 'package:freezed_annotation/freezed_annotation.dart';

part 'compare_teacher_required_qualifications.freezed.dart';
part 'compare_teacher_required_qualifications.g.dart';

@freezed
class CompareTeacherRequiredQualifications with _$CompareTeacherRequiredQualifications {
  const factory CompareTeacherRequiredQualifications({
    @Default(0) double lear,
    @Default(0) double hight,
    @Default(0) double goodPeople,
  }) = _CompareTeacherRequiredQualifications;

  factory CompareTeacherRequiredQualifications.fromJson(Map<String, dynamic> json) => _$CompareTeacherRequiredQualificationsFromJson(json);
}
    