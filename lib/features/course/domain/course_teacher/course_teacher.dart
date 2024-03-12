import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

part 'course_teacher.freezed.dart';
part 'course_teacher.g.dart';

@freezed
class CourseTeacher with _$CourseTeacher {
  const factory CourseTeacher({
    String? idTeacher,
    String? firstName,
    String? lastName,
    String? photoUrl,
    int? manyQualifications,
    double? manyAverageQualifications,
    int? manyComments,
    List<TeacherCourseQualificationOptional>? optionalQualifications,
    List<TeacherCourseQualificationRequired>? requiredQualifications,

  }) = _CourseTeacher;

  factory CourseTeacher.fromJson(Map<String, dynamic> json) => _$CourseTeacherFromJson(json);
}
