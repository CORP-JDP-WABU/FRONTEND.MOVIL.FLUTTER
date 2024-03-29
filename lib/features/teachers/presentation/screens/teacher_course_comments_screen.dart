import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/teachers.dart';

class TeacherCourseCommentsScreen extends ConsumerWidget {
  const TeacherCourseCommentsScreen({super.key});

  static const String name = 'teacher_course_comments';
  static const String route = '/$name';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teacher = ref.watch(teacherCourseProfileControllerProvider).teacher;
    final state = ref.watch(teacherCourseCommentsControllerProvider);
    final teacherCourseComments = state.teacherCourseComments;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.pageStatus == TeacherCourseCommentsStatus.error) {
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
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: TeacherProfileHeader(teacher: teacher)),
              TeacherCourseCommentsBody(
                teacher: teacher,
                teacherCourseComments: teacherCourseComments,
              ),
            ],
          ),
          if (state.pageStatus == TeacherCourseCommentsStatus.loading)
            const LoaderTransparent(),
        ],
      ),
    );
  }
}
