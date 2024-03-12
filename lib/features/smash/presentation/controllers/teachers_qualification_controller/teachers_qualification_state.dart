import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/smash/domain/domain.dart';

part 'teachers_qualification_state.freezed.dart';

enum TeacherQualificationStatus {
  initial,
  loading,
  loaded,
  error,
}

@freezed
class TeachersQualificationState with _$TeachersQualificationState {
  const factory TeachersQualificationState({
    SmashSuggestion? selectedSmashSuggestion,
    @Default(TeacherQualification()) TeacherQualification teacherQualification,
    @Default(TeacherComment()) TeacherComment teacherComment,
    @Default(TeacherQualificationStatus.initial)
    TeacherQualificationStatus teacherQualificationStatus,
  }) = _TeachersQualificationState;
}
