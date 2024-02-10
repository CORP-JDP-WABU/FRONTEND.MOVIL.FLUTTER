import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/smash/domain/domain.dart';

part 'smash_suggestion.freezed.dart';
part 'smash_suggestion.g.dart';

@freezed
class SmashSuggestion with _$SmashSuggestion {
  const factory SmashSuggestion({
    SmashSuggestionCourse? course,
    SmashSuggestionTeacher? teacher,
  }) = _SmashSuggestion;

  factory SmashSuggestion.fromJson(Map<String, dynamic> json) =>
      _$SmashSuggestionFromJson(json);

  static List<SmashSuggestion> smashSuggestionsFromJson(List<dynamic> jsons) =>
      jsons.map((e) => SmashSuggestion.fromJson(e)).toList();
}
