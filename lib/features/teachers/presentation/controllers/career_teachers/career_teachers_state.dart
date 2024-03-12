import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

part 'career_teachers_state.freezed.dart';

enum CareerTeachersStatus { loading, loaded, error, idle }

@freezed
class CareerTeachersState with _$CareerTeachersState {
  const factory CareerTeachersState({
    List<CareerTeacherCourse>? careerTeacherCourses,
    @Default(CareerTeachersStatus.loading) pageStatus,
  }) = _CareerTeachersState;
}