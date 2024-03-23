import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/constants.dart';
import 'package:wabu/features/compare/compare.dart';

part 'compare_teachers_controller.g.dart';

@riverpod
class CompareTeachersController extends _$CompareTeachersController {
  @override
  CompareTeachersState build() => const CompareTeachersState();

  Future<void> fetchData(List<String> teacherIds) async {
    try {
      state = state.copyWith(
        compareTeachersStatus: CompareTeachersStatus.loading,
      );

      final universityId = Globals.universityId ?? '';

      final response = await ref
          .watch(compareRepositoryProvider)
          .compareTeachers(universityId, teacherIds);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              compareTeachersStatus: CompareTeachersStatus.error,
            );
            break;
        }
      }, (List<CompareTeacher> compareTeachers) {
        state = state.copyWith(
          compareTeachers: compareTeachers,
          compareTeachersStatus: CompareTeachersStatus.loaded,
        );
      });
    } catch (e) {
      state = state.copyWith(
        compareTeachersStatus: CompareTeachersStatus.error,
      );
    }
  }

  void setPageIdle() {
    state = state.copyWith(
      compareTeachersStatus: CompareTeachersStatus.idle,
    );
  }

  void orderByQualification() {
    final compareTeachers = state.compareTeachers.toList();

    compareTeachers.sort((a, b) =>
        (b.manyAverageQualifications).compareTo(a.manyAverageQualifications));

    state = state.copyWith(
      compareTeachers: compareTeachers,
    );
  }

  void orderByLearnQualification() {
    final compareTeachers = state.compareTeachers.toList();

    compareTeachers.sort((a, b) =>
        (b.requiredQualification.lear).compareTo(a.requiredQualification.lear));

    state = state.copyWith(
      compareTeachers: compareTeachers,
    );
  }

  void orderByHighQualification() {
    final compareTeachers = state.compareTeachers.toList();

    compareTeachers.sort((a, b) => (b.requiredQualification.hight)
        .compareTo(a.requiredQualification.hight));

    state = state.copyWith(
      compareTeachers: compareTeachers,
    );
  }

  void orderByGoodQualification() {
    final compareTeachers = state.compareTeachers.toList();

    compareTeachers.sort((a, b) => (b.requiredQualification.goodPeople)
        .compareTo(a.requiredQualification.goodPeople));

    state = state.copyWith(
      compareTeachers: compareTeachers,
    );
  }
}
