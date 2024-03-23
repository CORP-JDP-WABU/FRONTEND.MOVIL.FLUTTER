import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/course/course.dart';

part 'course_profile.freezed.dart';
part 'course_profile.g.dart';

@freezed
class CourseProfile with _$CourseProfile {
  const factory CourseProfile({
    @Default('') String idCourse,
    @Default('') String course,
    @Default(0) int quantityComment,
    @Default(0) double averageQualification,
    @Default([]) List<CourseProfileDocument> documents,
    @Default([]) List<CourseProfileTeacher> teachers,
  }) = _CourseProfile;

  factory CourseProfile.fromJson(Map<String, dynamic> json) => _$CourseProfileFromJson(json);
}
