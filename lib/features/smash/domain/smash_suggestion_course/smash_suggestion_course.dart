import 'package:freezed_annotation/freezed_annotation.dart';

part 'smash_suggestion_course.freezed.dart';
part 'smash_suggestion_course.g.dart';

@freezed
class SmashSuggestionCourse with _$SmashSuggestionCourse {
  const factory SmashSuggestionCourse({
    String? idCourse,
    String? name,
  }) = _SmashSuggestionCourse;

  factory SmashSuggestionCourse.fromJson(Map<String, dynamic> json) =>
      _$SmashSuggestionCourseFromJson(json);
}
