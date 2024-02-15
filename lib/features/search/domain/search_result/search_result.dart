import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/search/domain/domain.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    List<CoursesSearchResult>? course,
    int? totalCourse,
    List<TeachersSearchResult>? teacher,
    int? totalTeacher,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);
}
