import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';

class CourseTeachersSection extends StatelessWidget {
  const CourseTeachersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              onTap: () {},
              child: const GradientText(
                text: 'Ver todos >',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
                gradient: primaryButtonLinearGradient,
              ),
            )
          ],
        ),
        const SizedBox(height: 8),
        const Row(
          children: [
            _CourseTeacherCard(),
            SizedBox(width: 12),
            _CourseTeacherCard(),
            SizedBox(width: 12),
            _CourseTeacherCard(),
          ],
        )
      ],
    );
  }
}

class _CourseTeacherCard extends StatelessWidget {
  const _CourseTeacherCard();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(25),
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
                  alignment: Alignment.topCenter,
                  'https://vietnamteachingjobs.com/wp-content/uploads/2023/07/why-do-you-want-to-be-a-teacher-1.jpg',
                  height: 92,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const Text('Enrique Paolo',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  )),
              const ProfileIndicator(
                  color: AppTheme.starColor,
                  text: '3.00',
                  asset: 'assets/images/svgs/star.svg',
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
