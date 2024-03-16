import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/widgets.dart';

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
            const Text('Profesores'),
            GestureDetector(
              onTap: () {},
              child: const Text('Ver todos >'),
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
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 92,
              ),
              const Text('Enrique Paolo'),
              const ProfileIndicator(
                color: Colors.white,
                iconSize: 32,
                textSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
