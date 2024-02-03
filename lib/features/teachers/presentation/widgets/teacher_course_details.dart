import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class TeacherCourseDetails extends StatelessWidget {
  const TeacherCourseDetails({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teacher?.course?.name ?? 'Teoría de la Comunicación I',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            height: 48 / 18,
            fontWeight: FontWeight.w700,
            color: AppTheme.courseNameColor,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 5; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: SvgPicture.asset('assets/images/svgs/star.svg'),
              ),
            const SizedBox(width: 28),
            Text(
              '${teacher?.course?.manyQualifications ?? 0}',
              style: const TextStyle(
                color: AppTheme.courseNameColor,
                fontSize: 19,
                fontWeight: FontWeight.bold,
                height: 48 / 19,
              ),
            ),
            const SizedBox(width: 12),
            SvgPicture.asset('assets/images/svgs/person.svg')
          ],
        ),
      ],
    );
  }
}
