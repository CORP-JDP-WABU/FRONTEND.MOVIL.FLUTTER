import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/course/course.dart';

class CourseProfileView extends ConsumerWidget {
  const CourseProfileView({
    super.key,
    required this.courseId,
  });

  static const String name = 'course-profile';
  static const String route = name;
  final String courseId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(courseProfileControllerProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.courseProfileStatus == CourseProfileStatus.initial) {
        ref.read(courseProfileControllerProvider.notifier).fetchData(courseId);
        return;
      }

      if (state.courseProfileStatus == CourseProfileStatus.error) {
        return;
      }
    });

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _CourseProfileHeader(
                  courseProfile: state.courseProfile,
                ),
                _CourseProfileBody(
                  courseProfile: state.courseProfile,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CourseProfileHeader extends StatelessWidget {
  const _CourseProfileHeader({
    required this.courseProfile,
  });

  final CourseProfile courseProfile;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: headerLinearGradient,
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  CustomBackButton(
                    color: Colors.white,
                    onTap: () => context.pop(),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CourseDetailsCard(
                      courseProfile: courseProfile,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CourseProfileBody extends StatelessWidget {
  const _CourseProfileBody({
    required this.courseProfile,
  });

  final CourseProfile courseProfile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          CourseTeachersSection(courseProfile: courseProfile),
          const SizedBox(height: 12),
          const CourseDocumentsSection(),
        ],
      ),
    );
  }
}
