import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/controllers/teachers_qualification_controller/teachers_qualification_state.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';

part 'teachers_qualification_controller.g.dart';

@riverpod
class TeachersQualificationController
    extends _$TeachersQualificationController {
  @override
  TeachersQualificationState build() => const TeachersQualificationState();

  void selectSmashSuggestion(SmashSuggestion smashSuggestion) {
    state = state.copyWith(
      selectedSmashSuggestion: smashSuggestion,
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

  void submitQualification(bool shouldSubmitComment) async {
    try {
      setQualificationLoading();

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

        if (state.teacherComment.comment.isNotEmpty && shouldSubmitComment) {
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

  void setQualificationLoading() {
    state = state.copyWith(
      teacherQualificationStatus: TeacherQualificationStatus.loading,
    );
  }

  void setQualificationLoaded() {
    state = state.copyWith(
      teacherQualificationStatus: TeacherQualificationStatus.loaded,
    );
  }

  void setQualificationError() {
    state = state.copyWith(
      teacherQualificationStatus: TeacherQualificationStatus.error,
    );
  }
}
