import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/teachers.dart';

part 'teacher_profile.freezed.dart';
part 'teacher_profile.g.dart';

@freezed
class TeacherProfile with _$TeacherProfile {
  const factory TeacherProfile({
    @Default(TeacherV2()) TeacherV2 teacher,
    @Default([]) List<TeacherCourseV2> courseInCareer,
    @Default([]) List<TeacherCourseV2> courseInOtherCareer,
  }) = _TeacherProfile;

  factory TeacherProfile.fromJson(Map<String, dynamic> json) => _$TeacherProfileFromJson(json);
}
    