import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/course/domain/domain.dart';

part 'course_teachers_response.freezed.dart';
part 'course_teachers_response.g.dart';

@freezed
class CourseTeachersResponse with _$CourseTeachersResponse {
  const factory CourseTeachersResponse({
    Course? course,
    List<CourseTeacher>? teachers,
  }) = _CourseTeacherResponse;

  factory CourseTeachersResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseTeachersResponseFromJson(json);
}
