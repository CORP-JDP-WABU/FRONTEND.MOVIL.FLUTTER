import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/course/course.dart';

part 'course_profile_state.freezed.dart';

enum CourseProfileStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class CourseProfileState with _$CourseProfileState {
  const factory CourseProfileState({
    @Default(CourseProfile()) CourseProfile courseProfile,
    @Default(CourseProfileStatus.initial) CourseProfileStatus courseProfileStatus,
  }) = _CourseProfileState;
}