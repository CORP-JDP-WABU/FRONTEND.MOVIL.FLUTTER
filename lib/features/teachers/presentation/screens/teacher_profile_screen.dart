import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
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
    final teacher = teacherProfile.teacher;
    final isLoading =
        state.teacherProfileStatus == TeacherProfileStatus.loading;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                TeacherProfileCardHeader(teacher: teacher),
                TeacherProfileDetails(
                  teacher: Teacher(
                    idTeacher: teacher.id,
                    firstName: teacher.firstName,
                    lastName: teacher.lastName,
                    email: teacher.email,
                    information: teacher.information,
                  ),
                ),
                TeacherProfileCardDetails(
                  teacher: teacher,
                ),
                const SizedBox(height: 16),
                if (teacherProfile.courseInCareer.isNotEmpty) ...[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Cursos en tu carrera',
                        style: TextStyle(
                          color: Color(0xFF02336A),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TeacherProfileCourses(
                    teacher: teacher,
                    teacherCourses: teacherProfile.courseInCareer,
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ],
                if (teacherProfile.courseInOtherCareer.isNotEmpty) ...[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Cursos en otras carreras',
                        style: TextStyle(
                          color: Color(0xFF02336A),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TeacherProfileCourses(
                    teacher: teacher,
                    teacherCourses: teacherProfile.courseInOtherCareer,
                  ),
                  const SizedBox(
                    height: 36,
                  )
                ],
              ],
            ),
          ),
          if (isLoading) const LoaderTransparent(),
        ],
      ),
    );
  }
}
