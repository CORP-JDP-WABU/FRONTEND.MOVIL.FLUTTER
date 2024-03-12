import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';

part 'teachers_tinder_controller.g.dart';

@riverpod
class TeachersTinderController extends _$TeachersTinderController {
  @override
  TeachersTinderState build() => const TeachersTinderState();

  Future<void> fetchData() async {
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

  Future<void> fetchMoreSuggestions() async {
    state = state.copyWith(
      pageStatus: TeachersTinderStatus.loading,
      smashSuggestions: [],
    );
    await fetchData();
  }

  Future<void> ignoreTeacher(String courseId, String teacherId) async {
    try {
      final response = await ref
          .watch(smashOperationsRepositoryProvider)
          .ignoreTeacher(courseId, teacherId);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            setPageError();
            break;
        }
      }, (IgnoreTeacherResponse ignoreTeacherResponse) {
        if (ignoreTeacherResponse.isRemoveTeacherToList != true) {
          setPageError();
          return;
        }

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
}
