import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

part 'career_teacher_course.freezed.dart';
part 'career_teacher_course.g.dart';

@freezed
class CareerTeacherCourse with _$CareerTeacherCourse {
  const factory CareerTeacherCourse({
    CareerCourse? course,
    CareerTeacher? teacher,
  }) = _CareerTeacherCourse;

  factory CareerTeacherCourse.fromJson(Map<String, dynamic> json) =>
      _$CareerTeacherCourseFromJson(json);

  static List<CareerTeacherCourse> careerTeacherCoursesFromJson(
          List<dynamic> jsons) =>
      jsons.map((e) => CareerTeacherCourse.fromJson(e)).toList();
}
