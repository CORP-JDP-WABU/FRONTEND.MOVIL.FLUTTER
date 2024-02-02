import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

part 'teacher_profile_state.freezed.dart';

enum Status { loading, loaded, error, idle }

@freezed
class TeacherProfileState with _$TeacherProfileState {
  const factory TeacherProfileState({
    Teacher? teacher,
    @Default(Status.loading) pageStatus,
  }) = _TeacherProfileState;
}