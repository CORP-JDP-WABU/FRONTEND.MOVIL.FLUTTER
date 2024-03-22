import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/features/teachers/teachers.dart';
import 'course_profile_container.dart';

class TeacherProfileCourses extends StatelessWidget {
  const TeacherProfileCourses({
    super.key,
    required this.assetName,
    required this.teacher,
    required this.teacherCourses,
    required this.title,
  });

  final String assetName;
  final String title;
  final TeacherV2 teacher;
  final List<TeacherCourseV2> teacherCourses;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/svgs/$assetName.svg',
                height: 15,
                width: 15,
              ),
              const SizedBox(
                width: 16.0,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xFF02336A),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(5.0),
          itemCount: teacherCourses.length,
          itemBuilder: (context, index) {
            return CourseProfileContainer(
              teacher: teacher,
              course: teacherCourses[index],
            );
          },
        )
      ],
    );
  }
}
