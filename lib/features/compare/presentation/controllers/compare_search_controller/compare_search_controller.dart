import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/constants.dart';
import 'package:wabu/features/compare/compare.dart';

part 'compare_search_controller.g.dart';

@riverpod
class CompareSearchController extends _$CompareSearchController {
  @override
  CompareSearchState build() => const CompareSearchState();

  bool hasFetchedAllTeachers() =>
      (state.searchResult.totalTeacher ?? 0) ==
      (state.searchResult.teacher?.length ?? 0);

  void onSearchTextChanged(String searchText) {
    state = state.copyWith(
      searchText: searchText,
    );
  }

  Future<void> search() async {
    try {
      state = state.copyWith(
        searchStatus: SearchStatus.loading,
      );

      final universityId = Globals.universityId ?? '';

      final response = await ref
          .watch(compareRepositoryProvider)
          .getSearchResults(universityId, 1, state.searchText);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              searchStatus: SearchStatus.error,
            );
            break;
        }
      }, (SearchResult searchResult) {
        state = state.copyWith(
          pageIndex: 1,
          searchResult: searchResult,
          searchStatus: SearchStatus.loaded,
        );
      });
    } catch (e) {
      state = state.copyWith(
        searchStatus: SearchStatus.error,
      );
    }
  }

  Future<void> loadNextPage() async {
    try {
      if (hasFetchedAllTeachers()) return;

      state = state.copyWith(
        searchStatus: SearchStatus.loading,
      );

      String universityId = Globals.universityId ?? '';

      final response = await ref
          .watch(compareRepositoryProvider)
          .getSearchResults(
              universityId, state.pageIndex + 1, state.searchText);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              searchStatus: SearchStatus.error,
            );
            break;
        }
      }, (SearchResult searchResult) {
        final teachers = state.searchResult.teacher?.toList();
        teachers?.addAll(searchResult.teacher ?? []);

        state = state.copyWith(
          searchResult: state.searchResult.copyWith(
            teacher: teachers,
          ),
          searchStatus: SearchStatus.loaded,
          pageIndex: state.pageIndex + 1,
        );
      });
    } catch (e) {
      state = state.copyWith(
        searchStatus: SearchStatus.error,
      );
    }
  }

  void selectTeacher(String teacherId) {
    final selectedTeacherIds = state.selectedTeacherIds.toList();
    selectedTeacherIds.add(teacherId);

    state = state.copyWith(
      selectedTeacherIds: selectedTeacherIds,
    );
  }

  void unselectTeacher(String teacherId) {
    final selectedTeacherIds = state.selectedTeacherIds.toList();
    selectedTeacherIds.remove(teacherId);

    state = state.copyWith(
      selectedTeacherIds: selectedTeacherIds,
    );
  }
}
