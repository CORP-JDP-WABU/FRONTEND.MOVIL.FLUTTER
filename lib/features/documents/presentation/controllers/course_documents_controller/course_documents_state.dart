import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/documents/documents.dart';

part 'course_documents_state.freezed.dart';

enum CourseDocumentsStatus {
  initial,
  loading,
  loaded,
  idle,
  error,
}

@freezed
class CourseDocumentsState with _$CourseDocumentsState {
  const factory CourseDocumentsState({
    @Default('') String courseId,
    @Default('') String documentType,
    @Default('') String searchText,
    @Default(1) int pageIndex,
    @Default(CourseDocuments()) CourseDocuments courseDocuments,
    @Default(CourseDocumentsStatus.initial) CourseDocumentsStatus courseDocumentsStatus,
  }) = _CourseDocumentsState;
}