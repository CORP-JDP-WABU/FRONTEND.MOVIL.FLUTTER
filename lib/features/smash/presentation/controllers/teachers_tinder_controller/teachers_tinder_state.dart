import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/smash/domain/domain.dart';

part 'teachers_tinder_state.freezed.dart';

enum TeachersTinderStatus { loading, loaded, idle, error }

@freezed
class TeachersTinderState with _$TeachersTinderState {
  const factory TeachersTinderState({
    List<SmashSuggestion>? smashSuggestions,
    @Default(TeachersTinderStatus.loading) pageStatus,
  }) = _TeachersTinderState;
}