import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/course/domain/domain.dart';

part 'course_teachers_state.freezed.dart';

enum CourseTeachersStatus { loading, loaded, error }

@freezed
class CourseTeachersState with _$CourseTeachersState {
  const factory CourseTeachersState({
    @Default(CourseTeachersResponse())
    CourseTeachersResponse courseTeachersResponse,
    @Default(CourseTeachersStatus.loading)
    CourseTeachersStatus courseTeachersStatus,
  }) = _CourseTeachersState;
}
