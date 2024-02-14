import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/home/data/data.dart';
import 'package:wabu/features/home/domain/domain.dart';
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
}
