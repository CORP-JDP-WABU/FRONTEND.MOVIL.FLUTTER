// ignore_for_file: unused_element

import 'package:freezed_annotation/freezed_annotation.dart';

part 'teachers_search_result.freezed.dart';
part 'teachers_search_result.g.dart';

@freezed
class TeachersSearchResult with _$TeachersSearchResult {
  const TeachersSearchResult._();

  const factory TeachersSearchResult({
    String? idTeacher,
    String? photoUrl,
    String? firstName,
    String? lastName,
    int? manyComments,
    int? manyQualifications,
    double? manyAverageQualifications,
  }) = _TeachersSearchResult;

  factory TeachersSearchResult.fromJson(Map<String, dynamic> json) =>
      _$TeachersSearchResultFromJson(json);

  String getFullName() =>
      '${firstName ?? ''} ${lastName ?? ''}'.trim().replaceAll(RegExp(r'\s+'), ' ');
}
