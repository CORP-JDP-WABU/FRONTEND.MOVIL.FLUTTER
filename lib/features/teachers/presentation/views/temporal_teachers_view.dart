import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/teachers/presentation/controllers/controllers.dart';
import 'package:wabu/features/teachers/presentation/screens/teacher_course_profile_screen.dart';

class TemporalTeachersView extends ConsumerWidget {
  const TemporalTeachersView({super.key});

  static const String name = "temporal_teachers_view";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(careerTeachersControllerProvider);
    final careerTeacherCourses = state.careerTeacherCourses ?? [];

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.pageStatus == CareerTeachersStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrión un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
        ref.read(teacherProfileControllerProvider.notifier).setPageIdle();
      }
    });

    return Stack(
      children: [
        ListView.builder(
          itemCount: careerTeacherCourses.length,
          itemBuilder: (context, index) {
            final careerTeacherCourse = careerTeacherCourses[index];

            return ListTile(
              title: Text(careerTeacherCourse.course?.name ?? ''),
              subtitle: Text(careerTeacherCourse.teacher?.firstName ?? ''),
              onTap: () {
                Globals.teacherId =
                    careerTeacherCourse.teacher?.idTeacher ?? '';
                Globals.courseId = careerTeacherCourse.course?.idCourse ?? '';
                context.push(TeacherCourseProfileScreen.route);
              },
            );
          },
        ),
        if (state.pageStatus != CareerTeachersStatus.loading &&
            careerTeacherCourses.isEmpty)
          const Center(
            child: Text('No hay datos'),
          ),
        if (state.pageStatus == CareerTeachersStatus.loading)
          const LoaderTransparent(),
      ],
    );
  }
}
