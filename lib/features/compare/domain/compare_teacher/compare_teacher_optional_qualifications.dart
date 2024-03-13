import 'package:freezed_annotation/freezed_annotation.dart';

part 'compare_teacher_optional_qualifications.freezed.dart';
part 'compare_teacher_optional_qualifications.g.dart';

@freezed
class CompareTeacherOptionalQualifications with _$CompareTeacherOptionalQualifications {
  const factory CompareTeacherOptionalQualifications({
    @Default(0) int worked,
    @Default(0) int late,
    @Default(0) int assistance,
  }) = _CompareTeacherOptionalQualifications;

  factory CompareTeacherOptionalQualifications.fromJson(Map<String, dynamic> json) => _$CompareTeacherOptionalQualificationsFromJson(json);
}
    