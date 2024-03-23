import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/course/course.dart';

class CourseTeachersSection extends StatelessWidget {
  const CourseTeachersSection({
    super.key,
    required this.courseProfile,
  });

  final CourseProfile courseProfile;

  @override
  Widget build(BuildContext context) {
    final teachers = courseProfile.teachers;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Profesores',
                style: TextStyle(
                  color: Color(0XFF6889AB),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            GestureDetector(
              onTap: () {
                context.pushNamed(
                  CourseCarrousel.name,
                  extra: courseProfile.idCourse,
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: GradientText(
                  text: 'Ver todos >',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                  gradient: primaryButtonLinearGradient,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            _CourseTeacherCard(
              courseProfileTeacher: teachers[0],
            ),
            const SizedBox(width: 12),
            _CourseTeacherCard(
              courseProfileTeacher: teachers[1],
            ),
            const SizedBox(width: 12),
            _CourseTeacherCard(
              courseProfileTeacher: teachers[2],
            ),
          ],
        )
      ],
    );
  }
}

class _CourseTeacherCard extends StatelessWidget {
  const _CourseTeacherCard({
    required this.courseProfileTeacher,
  });

  final CourseProfileTeacher courseProfileTeacher;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Image.network(
                  'https://vietnamteachingjobs.com/wp-content/uploads/2023/07/why-do-you-want-to-be-a-teacher-1.jpg',
                  alignment: Alignment.topCenter,
                  height: 92,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                courseProfileTeacher.firstName,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 4),
              ProfileIndicator(
                color: AppTheme.starColor,
                text: courseProfileTeacher.averageQualification
                    .toStringAsFixed(2),
                asset: 'assets/images/svgs/star.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
