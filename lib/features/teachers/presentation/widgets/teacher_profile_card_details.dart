import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

class TeacherProfileCardDetails extends StatelessWidget {
  const TeacherProfileCardDetails({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /* Text(
          teacher?.course?.name ?? 'Teoría de la Comunicación I',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            height: 48 / 18,
            fontWeight: FontWeight.w700,
            color: AppTheme.courseNameColor,
          ),
        ),*/
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 2.0),
              child: Text((0).toStringAsFixed(2),
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 195, 42, 1.000),
                    fontFamily: 'SFProDisplay',
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0, right: 4.0),
              child: SvgPicture.asset('assets/images/svgs/star.svg',
                  height: 15,
                  width: 15,
                  color: const Color.fromRGBO(255, 195, 42, 1.000)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 2.0),
              child: Text((0).toString(),
                  style: const TextStyle(
                    color: Color.fromRGBO(42, 203, 255, 1.000),
                    fontFamily: 'SFProDisplay',
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0, right: 4.0),
              child: SvgPicture.asset(
                'assets/images/svgs/message.svg',
                height: 15,
                width: 15,
                color: const Color.fromRGBO(42, 203, 255, 1.000),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 2.0),
              child: Text((0).toString(),
                  style: const TextStyle(
                    color: AppTheme.student,
                    fontFamily: 'SFProDisplay',
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0, right: 4.0),
              child: SvgPicture.asset(
                'assets/images/svgs/person.svg',
                height: 15,
                width: 15,
                color: AppTheme.student,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
