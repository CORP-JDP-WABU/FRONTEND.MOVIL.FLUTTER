import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_search_result.freezed.dart';
part 'courses_search_result.g.dart';

@freezed
class CoursesSearchResult with _$CoursesSearchResult {
  const factory CoursesSearchResult({
    String? idCourse,
    String? name,
    int? countTeachers,
    int? countComment,
  }) = _CoursesSearchResult;

  factory CoursesSearchResult.fromJson(Map<String, dynamic> json) => _$CoursesSearchResultFromJson(json);
}
