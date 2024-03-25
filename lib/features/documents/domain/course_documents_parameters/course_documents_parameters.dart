import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_documents_parameters.freezed.dart';

@freezed
class CourseDocumentsParameters with _$CourseDocumentsParameters {
  const factory CourseDocumentsParameters({
    @Default('') String courseId,
    @Default('') String documentType,
  }) = _CourseDocumentsParameters;
}
