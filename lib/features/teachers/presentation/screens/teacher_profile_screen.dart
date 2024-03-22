import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/teachers/teachers.dart';

class TeacherProfileScreen extends ConsumerStatefulWidget {
  const TeacherProfileScreen({
    super.key,
    required this.teacherId,
  });

  static const String name = "teacher_profile";
  static const String route = "/$name";
  final String teacherId;

  @override
  ConsumerState<TeacherProfileScreen> createState() =>
      _TeacherProfileScreenState();
}

class _TeacherProfileScreenState extends ConsumerState<TeacherProfileScreen> {
  @override
  void initState() {
    super.initState();
    ref
        .read(teacherProfileControllerProvider.notifier)
        .getTeacherProfile(widget.teacherId);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(teacherProfileControllerProvider);
    final teacherProfile = state.teacherProfile;
    final isLoading =
        state.teacherProfileStatus == TeacherProfileStatus.loading;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _TeacherProfileHeader(teacher: teacherProfile.teacher),
                const SizedBox(height: 24),
                _TeacherProfileBody(
                  teacher: teacherProfile.teacher,
                  courseInCareer: teacherProfile.courseInCareer,
                  courseInOtherCareer: teacherProfile.courseInOtherCareer,
                ),
              ],
            ),
          ),
          if (isLoading) const LoaderTransparent(),
        ],
      ),
    );
  }
}

class _TeacherProfileHeader extends StatelessWidget {
  const _TeacherProfileHeader({
    required this.teacher,
  });

  final TeacherV2 teacher;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: ProfileClipper(),
          child: Container(
            height: 400,
            decoration: const BoxDecoration(
              gradient: primaryLinearGradient,
            ),
            child: Container(),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                CustomBackButton(
                  color: Colors.white,
                  onTap: () => context.pop(),
                ),
                const SizedBox(height: 32),
                TeacherProfileCardDetails(
                  teacher: teacher,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TeacherProfileBody extends StatelessWidget {
  const _TeacherProfileBody({
    required this.teacher,
    required this.courseInCareer,
    required this.courseInOtherCareer,
  });

  final TeacherV2 teacher;
  final List<TeacherCourseV2> courseInCareer;
  final List<TeacherCourseV2> courseInOtherCareer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: (courseInCareer.isNotEmpty || courseInOtherCareer.isNotEmpty)
          ? Column(
              children: [
                TeacherProfileCourses(
                  assetName: 'course_icon',
                  teacher: teacher,
                  teacherCourses: courseInCareer,
                  title: 'Cursos en tu carrera',
                ),
                const SizedBox(height: 16),
                TeacherProfileCourses(
                  assetName: 'course_icon_alter',
                  teacher: teacher,
                  teacherCourses: courseInOtherCareer,
                  title: 'Cursos en otras carreras',
                ),
                const SizedBox(height: 24),
              ],
            )
          : const UnhappyPath(
              title: 'No hay cursos vinculados a este profesor todavía',
              subtitle: '!Puedes sugerirlos en el botón arriba a la derecha',
            ),
    );
  }
}
