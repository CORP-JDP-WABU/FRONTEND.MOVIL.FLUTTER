import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/compare/compare.dart';

part 'compare_teacher.freezed.dart';
part 'compare_teacher.g.dart';

@freezed
class CompareTeacher with _$CompareTeacher {
  const factory CompareTeacher({
    @Default('') String idTeacher,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default(0) int manyQualifications,
    @Default(0) int manyComments,
    @Default(0) double manyAverageQualifications,
    @Default('') String photoUrl,
    @Default(CompareTeacherRequiredQualifications())
    CompareTeacherRequiredQualifications requiredQualification,
    @Default(CompareTeacherOptionalQualifications())
    CompareTeacherOptionalQualifications optionalQualification,
  }) = _CompareTeacher;

  factory CompareTeacher.fromJson(Map<String, dynamic> json) =>
      _$CompareTeacherFromJson(json);

  static List<CompareTeacher> compareTeachersFromJson(List<dynamic> jsons) =>
      jsons.map((e) => CompareTeacher.fromJson(e)).toList();
}
