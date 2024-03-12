import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/teachers.dart';

part 'teacher_profile_state.freezed.dart';

enum TeacherProfileStatus {
  loading,
  loaded,
  error,
}

@freezed
class TeacherProfileState with _$TeacherProfileState {
  const factory TeacherProfileState({
    @Default(TeacherProfile()) TeacherProfile teacherProfile,
    @Default(TeacherProfileStatus.loading)
    TeacherProfileStatus teacherProfileStatus,
  }) = _TeacherProfileState;
}
