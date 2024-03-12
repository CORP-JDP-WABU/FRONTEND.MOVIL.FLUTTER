import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_course_v2.freezed.dart';
part 'teacher_course_v2.g.dart';

@freezed
class TeacherCourseV2 with _$TeacherCourseV2 {
  const factory TeacherCourseV2({
    @Default('') String id,
    @Default('') String name,
    @Default(0) int manyQualifications,
    @Default(0) double manyAverageQualifications,
    @Default(0) int manyComments,
  }) = _TeacherCourseV2;

  factory TeacherCourseV2.fromJson(Map<String, dynamic> json) =>
      _$TeacherCourseV2FromJson(json);
}
