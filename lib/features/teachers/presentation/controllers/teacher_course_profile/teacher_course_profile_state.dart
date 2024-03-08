import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

part 'teacher_course_profile_state.freezed.dart';

enum TeacherCourseProfileStatus { loading, loaded, error, idle }

@freezed
class TeacherCourseProfileState with _$TeacherCourseProfileState {
  const factory TeacherCourseProfileState({
    Teacher? teacher,
    @Default(TeacherCourseProfileStatus.loading) pageStatus,
  }) = _TeacherCourseProfileState;
}