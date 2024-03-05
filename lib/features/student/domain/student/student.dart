import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  const factory Student({
    @Default('') String idStudent,
    @Default('') String profileUrl,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String information,
    @Default('') String idUniversity,
    @Default('') String university,
    @Default('') String idCareer,
    @Default('') String career,
    @Default('') String cicle,
    @Default(false) bool isFirstLogin
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);
}
