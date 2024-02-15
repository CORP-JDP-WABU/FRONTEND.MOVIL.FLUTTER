import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/home/data/data.dart';
import 'package:wabu/features/home/domain/domain.dart';
import 'package:wabu/features/search/data/repositories/providers.dart';
import 'package:wabu/features/search/domain/domain.dart';
import 'package:wabu/features/search/presentation/presentation.dart';

part 'search_controller.g.dart';

@riverpod
class SearchController extends _$SearchController {
  @override
  SearchState build() {
    fetchData();
    return const SearchState();
  }

  Future<void> fetchData() async {
    try {
      String studentId = Globals.studentId ?? '';
      String universityId = Globals.universityId ?? '';

      final response = await ref
          .watch(dashboardRepositoryProvider)
          .getStudentDashboard(universityId, studentId);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              searchStatus: SearchStatus.error,
            );
            break;
        }
      }, (HomeDashboard homeDashboard) {
        state = state.copyWith(
          homeDashboard: homeDashboard,
          searchStatus: SearchStatus.loaded,
        );
      });
    } catch (e) {
      state = state.copyWith(
        searchStatus: SearchStatus.error,
      );
    }
  }

  Future<void> search(String searchText, int page) async {
    try {
      state = state.copyWith(
        searchResultStatus: SearchResultStatus.loading,
      );

      String universityId = Globals.universityId ?? '';

      final response = await ref
          .watch(searchRepositoryProvider)
          .getSearchResults(universityId, page, searchText);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              searchResultStatus: SearchResultStatus.error,
            );
            break;
        }
      }, (SearchResult searchResult) {
        state = state.copyWith(
          searchResult: searchResult,
          searchResultStatus: SearchResultStatus.loaded,
        );
      });
    } catch (e) {
      state = state.copyWith(
        searchResultStatus: SearchResultStatus.error,
      );
    }
  }

  void orderLexicographicallyTeachersList() {
    final isAscendingOrdered = state.isLexicographicallyOrdered;
    final teachers = state.searchResult.teacher?.toList();

    if (!isAscendingOrdered) {
      teachers?.sort((a, b) => (a.getFullName()).compareTo(b.getFullName()));
    } else {
      teachers?.sort((a, b) => (b.getFullName()).compareTo(a.getFullName()));
    }

    state = state.copyWith(
      searchResult: state.searchResult.copyWith(teacher: teachers),
      isLexicographicallyOrdered: !isAscendingOrdered,
    );
  }

  void orderTeachersListByQualification() {
    final teachers = state.searchResult.teacher?.toList();

    teachers?.sort((a, b) => (b.manyAverageQualifications ?? 0)
        .compareTo(a.manyAverageQualifications ?? 0));

    state = state.copyWith(
      searchResult: state.searchResult.copyWith(teacher: teachers),
    );
  }
}
