import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/teacher_course.dart';

part 'teacher.freezed.dart';
part 'teacher.g.dart';

@freezed
class Teacher with _$Teacher {
  const factory Teacher({
    String? idTeacher,
    String? firstName,
    String? lastName,
    String? email,
    String? profileUrl,
    String? information,
    TeacherCourse? course,
  }) = _Teacher;

  factory Teacher.fromJson(Map<String, dynamic> json) => _$TeacherFromJson(json);
}

    