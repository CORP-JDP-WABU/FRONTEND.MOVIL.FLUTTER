import 'package:flutter/material.dart';
import 'package:wabu/features/teachers/teachers.dart';
import 'course_profile_container.dart';

class TeacherProfileCourses extends StatelessWidget {
  const TeacherProfileCourses({
    super.key,
    required this.teacher,
    required this.teacherCourses,
  });

  final TeacherV2 teacher;
  final List<TeacherCourseV2> teacherCourses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(5.0),
      itemCount: teacherCourses.length,
      itemBuilder: (context, index) {
        return CourseProfileContainer(
          teacher: teacher,
          course: teacherCourses[index],
        );
      },
    );
  }
}
