import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_v2.freezed.dart';
part 'teacher_v2.g.dart';

@freezed
class TeacherV2 with _$TeacherV2 {
  const factory TeacherV2({
    @Default('') String id,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String photoUrl,
    @Default('') String information,
    @Default(0) int manyQualifications,
    @Default(0) int manyComments,
    @Default(0) double manyAverageQualifications,
  }) = _TeacherV2;

  factory TeacherV2.fromJson(Map<String, dynamic> json) => _$TeacherV2FromJson(json);
}
    