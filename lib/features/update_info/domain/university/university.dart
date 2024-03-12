import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/update_info/update_info.dart';

part 'university.freezed.dart';
part 'university.g.dart';

@freezed
class University with _$University {
  const factory University({
    String? idUniversity,
    @Default('') String name,
    @Default([]) List<Career> careers,
  }) = _University;

  factory University.fromJson(Map<String, dynamic> json) =>
      _$UniversityFromJson(json);

  static List<University> universitiesFromJson(List<dynamic> jsons) =>
      jsons.map((e) => University.fromJson(e)).toList();
}
