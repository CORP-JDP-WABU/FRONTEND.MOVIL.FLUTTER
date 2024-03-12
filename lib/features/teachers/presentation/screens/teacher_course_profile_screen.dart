import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/teachers.dart';

class TeacherCourseProfileScreen extends ConsumerStatefulWidget {
  const TeacherCourseProfileScreen({
    super.key,
    required this.teacherCourse,
  });

  static const String name = "teacher_course_profile";
  static const String route = "/$name";
  final TeacherCourseExtra teacherCourse;

  @override
  ConsumerState<TeacherCourseProfileScreen> createState() =>
      _TeacherCourseProfileScreenState();
}

class _TeacherCourseProfileScreenState
    extends ConsumerState<TeacherCourseProfileScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(teacherCourseProfileControllerProvider.notifier).fetchData(
          widget.teacherCourse.teacherId,
          widget.teacherCourse.courseId,
        );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(teacherCourseProfileControllerProvider);
    final teacher = state.teacher;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.pageStatus == TeacherCourseProfileStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrión un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
        ref.read(teacherCourseProfileControllerProvider.notifier).setPageIdle();
      }
    });

    return Scaffold(
      backgroundColor: AppTheme.greyBackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                TeacherProfileHeader(teacher: teacher),
                TeacherProfileBody(teacher: teacher),
              ],
            ),
          ),
          if (state.pageStatus == TeacherCourseProfileStatus.loading)
            const LoaderTransparent(),
        ],
      ),
    );
  }
}
