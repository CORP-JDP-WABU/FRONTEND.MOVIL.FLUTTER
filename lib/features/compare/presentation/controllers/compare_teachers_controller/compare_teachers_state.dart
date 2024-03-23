import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/compare/compare.dart';

part 'compare_teachers_state.freezed.dart';

enum CompareTeachersStatus {
  initial,
  idle,
  loading,
  loaded,
  error,
}

@freezed
class CompareTeachersState with _$CompareTeachersState {
  const factory CompareTeachersState({
    @Default([]) List<CompareTeacher> compareTeachers,
    @Default(CompareTeachersStatus.initial)
    CompareTeachersStatus compareTeachersStatus,
  }) = _CompareTeachersStatus;
}
