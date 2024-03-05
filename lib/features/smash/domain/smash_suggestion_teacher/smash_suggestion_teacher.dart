import 'package:freezed_annotation/freezed_annotation.dart';

part 'smash_suggestion_teacher.freezed.dart';
part 'smash_suggestion_teacher.g.dart';

@freezed
class SmashSuggestionTeacher with _$SmashSuggestionTeacher {
  const factory SmashSuggestionTeacher({
    String? idTeacher,
    String? firstName,
    String? lastName,
    String? photoUrl,
  }) = _SmashSuggestionTeacher;

  factory SmashSuggestionTeacher.fromJson(Map<String, dynamic> json) =>
      _$SmashSuggestionTeacherFromJson(json);
}
