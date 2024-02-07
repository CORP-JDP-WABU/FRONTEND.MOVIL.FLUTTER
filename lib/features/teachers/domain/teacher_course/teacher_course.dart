import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

part 'teacher_course.freezed.dart';
part 'teacher_course.g.dart';

@freezed
class TeacherCourse with _$TeacherCourse {
  const factory TeacherCourse({
    String? idCourse,
    String? name,
    int? manyQualifications,
    double? manyAverageQualifications,
    int? manyComments,
    List<TeacherCourseQualificationOptional>? optionalQualifications,
    List<TeacherCourseQualificationRequired>? requiredQualifications,

  }) = _TeacherCourse;

  factory TeacherCourse.fromJson(Map<String, dynamic> json) => _$TeacherCourseFromJson(json);
}
