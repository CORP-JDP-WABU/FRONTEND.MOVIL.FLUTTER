import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
class Document with _$Document {
  const factory Document({
    @Default('') String idDocument,
    @Default('') String originalName,
    @Default('') String documentType,
    @Default('') String extension,
    @Default('') String url,
    @Default(Student()) Student student,
    @Default(Course()) Course course,
    @Default('') String cicleName,
    @Default('') String teacher,
    @Default('') String createdAt,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) => _$DocumentFromJson(json);
}

@freezed
class Student with _$Student {
  const factory Student({
    @Default('') String idStudent,
    @Default('') String fullName,
    @Default('') String profileUrl,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    @Default('') String idCourse,
    @Default('') String name,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

