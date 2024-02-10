import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_dashboard_student.freezed.dart';
part 'home_dashboard_student.g.dart';

@freezed
class HomeDashboardStudent with _$HomeDashboardStudent {
  const factory HomeDashboardStudent({
    String? idStudent,
    int? points,
    List<String>? favoriteCourses,
  }) = _HomeDashboardStudent;

  factory HomeDashboardStudent.fromJson(Map<String, dynamic> json) =>
      _$HomeDashboardStudentFromJson(json);
}
