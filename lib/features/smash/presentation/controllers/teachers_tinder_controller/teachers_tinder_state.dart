import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/smash/domain/domain.dart';

part 'teachers_tinder_state.freezed.dart';

enum TeachersTinderStatus { loading, loaded, error }

enum TeacherQualificationStatus { loading, loaded, idle, error }

@freezed
class TeachersTinderState with _$TeachersTinderState {
  const factory TeachersTinderState({
    List<SmashSuggestion>? smashSuggestions,
    SmashSuggestion? selectedSmashSuggestion,
    @Default(TeacherQualification()) TeacherQualification teacherQualification,
    @Default(TeacherComment()) TeacherComment teacherComment,
    @Default(TeachersTinderStatus.loading) TeachersTinderStatus pageStatus,
    @Default(TeacherQualificationStatus.idle)
    TeacherQualificationStatus qualificationStatus,
  }) = _TeachersTinderState;
}
