import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_course.freezed.dart';
part 'career_course.g.dart';

@freezed
class CareerCourse with _$CareerCourse {
  const factory CareerCourse({
    String? idCourse,
    String? name,
  }) = _CareerCourse;

  factory CareerCourse.fromJson(Map<String, dynamic> json) => _$CareerCourseFromJson(json);
}
