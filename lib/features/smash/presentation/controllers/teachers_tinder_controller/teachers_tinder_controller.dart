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

  void selectSmashSuggestion(int index) {
    state = state.copyWith(
      selectedSmashSuggestion: state.smashSuggestions?[index],
      teacherQualification: const TeacherQualification(),
      teacherComment: const TeacherComment(),
    );
  }

  void setLearn(double value) {
    state = state.copyWith.teacherQualification.required(learn: value.round());
  }

  void setHight(double value) {
    state = state.copyWith.teacherQualification.required(hight: value.round());
  }

  void setGoodPeople(double value) {
    state =
        state.copyWith.teacherQualification.required(goodPeople: value.round());
  }

  void setWorked(int value) {
    state = state.copyWith.teacherQualification.optional(worked: value);
  }

  void setLate(int value) {
    state = state.copyWith.teacherQualification.optional(late: value);
  }

  void setAssistance(int value) {
    state = state.copyWith.teacherQualification.optional(assistance: value);
  }

  void setComment(String comment) {
    state = state.copyWith.teacherComment(
      comment: comment,
    );
  }

  void submitQualification() async {
    try {
      final courseId = state.selectedSmashSuggestion?.course?.idCourse ?? '';
      final teacherId = state.selectedSmashSuggestion?.teacher?.idTeacher ?? '';
      final teacherQualification = state.teacherQualification;

      final response = await ref
          .read(smashOperationsRepositoryProvider)
          .qualifyTeacher(courseId, teacherId, teacherQualification);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            setQualificationError();
            break;
        }
      }, (QualifyTeacherResponse qualifyTeacherResponse) {
        if (qualifyTeacherResponse.isRemoveTeacherToList != true) {
          setQualificationError();
          return;
        }

        if (state.teacherComment.comment.isNotEmpty) {
          submitComment();
          return;
        }

        setQualificationLoaded();
      });
    } catch (e) {
      setQualificationError();
    }
  }

  void submitComment() async {
    try {
      final courseId = state.selectedSmashSuggestion?.course?.idCourse ?? '';
      final teacherId = state.selectedSmashSuggestion?.teacher?.idTeacher ?? '';
      final teacherComment = state.teacherComment;

      final response = await ref
          .read(smashOperationsRepositoryProvider)
          .commentTeacher(courseId, teacherId, teacherComment);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            setQualificationError();
            break;
        }
      }, (CommentTeacherResponse commentTeacherResponse) {
        if (commentTeacherResponse.isCommentCreate != false) {
          setQualificationError();
          return;
        }

        setQualificationLoaded();
      });
    } catch (e) {
      setQualificationError();
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

  void setQualificationLoading() {
    state = state.copyWith(
      qualificationStatus: TeacherQualificationStatus.loading,
    );
  }

  void setQualificationLoaded() {
    state = state.copyWith(
      qualificationStatus: TeacherQualificationStatus.loaded,
    );
  }

  void setQualificationError() {
    state = state.copyWith(
      qualificationStatus: TeacherQualificationStatus.error,
    );
  }

  void setQualificationIdle() {
    state = state.copyWith(
      qualificationStatus: TeacherQualificationStatus.idle,
    );
  }
}
