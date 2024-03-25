import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/documents/documents.dart';

part 'course_documents.freezed.dart';
part 'course_documents.g.dart';

@freezed
class CourseDocuments with _$CourseDocuments {
  const factory CourseDocuments({
    @Default([]) List<Document> documents,
    @Default(0) int totalDocs,
  }) = _CourseDocuments;

  factory CourseDocuments.fromJson(Map<String, dynamic> json) => _$CourseDocumentsFromJson(json);
}
