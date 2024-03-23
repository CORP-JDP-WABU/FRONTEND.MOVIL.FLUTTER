import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/course/course.dart';
import 'package:wabu/utils/utils.dart';

part 'course_profile_controller.g.dart';

@riverpod
class CourseProfileController extends _$CourseProfileController {
  @override
  CourseProfileState build() => const CourseProfileState();

  Future<void> fetchData(String courseId) async {
    try {
      state = state.copyWith(
        courseProfileStatus: CourseProfileStatus.loading,
      );

      final response =
          await ref.watch(courseRepositoryProvider).getCourseProfile(courseId);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              courseProfileStatus: CourseProfileStatus.error,
            );
            break;
        }
      }, (CourseProfile courseProfile) {
        state = state.copyWith(
          courseProfile: courseProfile,
          courseProfileStatus: CourseProfileStatus.loaded,
        );
      });
    } catch (e) {
      logger.e(e);
      state = state.copyWith(
        courseProfileStatus: CourseProfileStatus.error,
      );
    }
  }
}
