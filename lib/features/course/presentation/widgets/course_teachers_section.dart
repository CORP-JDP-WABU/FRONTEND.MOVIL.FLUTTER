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
                  fontFamily: 'SFProDisplay',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            GestureDetector(
              onTap: () {},
              child: const Text('Ver todos >',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'SFProDisplay',
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  )),
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
          borderRadius: const BorderRadius.all(Radius.circular(25)),
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
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                child: Image.network(
                  alignment: Alignment.topCenter,
                  'https://vietnamteachingjobs.com/wp-content/uploads/2023/07/why-do-you-want-to-be-a-teacher-1.jpg',
                  height: 92,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const Text('Enrique Paolo',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SFProDisplay',
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  )),
              const ProfileIndicator(
                color: AppTheme.starColor,
                iconSize: 12,
                textSize: 12,
                fontWeight: FontWeight.bold
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
