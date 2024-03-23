import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_profile_document.freezed.dart';
part 'course_profile_document.g.dart';

@freezed
class CourseProfileDocument with _$CourseProfileDocument {
  const factory CourseProfileDocument({
    @Default('') String typeDocument,
    @Default('') String name,
    @Default(0) int quantity,
  }) = _CourseProfileDocument;

  factory CourseProfileDocument.fromJson(Map<String, dynamic> json) =>
      _$CourseProfileDocumentFromJson(json);
}
