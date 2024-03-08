import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

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
            RatingBarIndicator(
              rating: teacher?.course?.manyAverageQualifications ?? 0,
              itemBuilder: (context, _) => const Icon(
                Icons.star_rounded,
                color: AppTheme.starColor,
              ),
              itemCount: 5,
              itemSize: 24,
              direction: Axis.horizontal,
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
