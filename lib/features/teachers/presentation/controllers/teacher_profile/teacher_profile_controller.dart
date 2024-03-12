import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/constants.dart';
import 'package:wabu/features/teachers/teachers.dart';
import 'package:wabu/utils/utils.dart';

part 'teacher_profile_controller.g.dart';

@riverpod
class TeacherProfileController extends _$TeacherProfileController {
  @override
  TeacherProfileState build() => const TeacherProfileState();

  Future<void> getTeacherProfile(String teacherId) async {
    try {
      final careerId = Globals.careerId;

      if (careerId == null) {
        throw Exception('NO_CAREER_ID_FOUND');
      }

      final getTeacherProfileResponse = await ref
          .watch(teachersRepositoryProvider)
          .getTeacherProfile(teacherId, careerId);

      getTeacherProfileResponse.fold(
        (Failure failure) {
          switch (failure.errorCode) {
            default:
              state = state.copyWith(
                teacherProfileStatus: TeacherProfileStatus.error,
              );
              break;
          }
        },
        (TeacherProfile teacherProfile) {
          state = state.copyWith(
            teacherProfile: teacherProfile,
            teacherProfileStatus: TeacherProfileStatus.loaded,
          );
        },
      );
    } catch (error) {
      logger.e(error);
      state = state.copyWith(
        teacherProfileStatus: TeacherProfileStatus.error,
      );
    }
  }
}
