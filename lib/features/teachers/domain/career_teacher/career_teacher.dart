import 'package:freezed_annotation/freezed_annotation.dart';

part 'career_teacher.freezed.dart';
part 'career_teacher.g.dart';

@freezed
class CareerTeacher with _$CareerTeacher {
  const factory CareerTeacher({
    String? idTeacher,
    String? firstName,
    String? lastName,
    String? photoUrl,
  }) = _CareerTeacher;

  factory CareerTeacher.fromJson(Map<String, dynamic> json) => _$CareerTeacherFromJson(json);
}
