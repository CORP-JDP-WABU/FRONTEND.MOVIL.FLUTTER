import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/course/course.dart';

class CourseDetailsCard extends StatelessWidget {
  const CourseDetailsCard({super.key, required this.courseProfile});

  final CourseProfile courseProfile;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34),
          gradient: headerLinearGradient,
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
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                courseProfile.course,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'GothamRounded',
                  height: 24 / 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _CourseDetailItem(
                    asset: 'assets/images/svgs/star.svg',
                    text: 'Calificacion',
                    color: Colors.white,
                    value:
                        (courseProfile.averageQualification).toStringAsFixed(1),
                  ),
                  const SizedBox(width: 8),
                  _CourseDetailItem(
                    asset: 'assets/images/svgs/message.svg',
                    text: 'Comentarios',
                    color: Colors.white,
                    value: (courseProfile.quantityComment).toString(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CourseDetailItem extends StatelessWidget {
  const _CourseDetailItem({
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
  });

  final String asset;
  final String text;
  final Color color;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              value,
              style: TextStyle(
                color: color,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 4),
            SvgPicture.asset(
              asset,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
