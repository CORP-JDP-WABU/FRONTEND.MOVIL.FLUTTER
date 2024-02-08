import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/controllers/controllers.dart';

part 'teachers_tinder_controller.g.dart';

@riverpod
class TeachersTinderController extends _$TeachersTinderController {
  @override
  TeachersTinderState build() {
    fetchData();
    return const TeachersTinderState();
  }

  void fetchData() async {
    try {
      String careerId = Globals.careerId ?? '';

      final getTeacherCourseResponse = await ref
          .watch(smashRepositoryProvider)
          .getSmashSuggestions(careerId);

      getTeacherCourseResponse.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            setPageError();
            break;
        }
      }, (List<SmashSuggestion> smashSuggestions) {
        state = state.copyWith(
          smashSuggestions: smashSuggestions,
        );
        setPageLoaded();
      });
    } catch (e) {
      setPageError();
    }
  }

  void setPageLoaded() {
    state = state.copyWith(
      pageStatus: TeachersTinderStatus.loaded,
    );
  }

  void setPageError() {
    state = state.copyWith(
      pageStatus: TeachersTinderStatus.error,
    );
  }

  void setPageIdle() {
    state = state.copyWith(
      pageStatus: TeachersTinderStatus.idle,
    );
  }
}
