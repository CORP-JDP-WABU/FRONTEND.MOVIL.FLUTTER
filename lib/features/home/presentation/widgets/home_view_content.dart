import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/student/domain/domain.dart';

class HomeViewContent extends StatelessWidget {
  const HomeViewContent({
    super.key,
    required this.student,
  });

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '¡Bienvenido!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 31,
            height: 48 / 31,
            fontFamily: 'GothamRounded',
          ),
        ),
        SolidCircleAvatar(
          radius: 52,
          borderWidth: 7,
          borderColor: Colors.white,
          imageProvider: (student.profileUrl.isNotEmpty)
              ? AssetImage('assets/images/${student.profileUrl}')
              : null,
        ),
        const SizedBox(height: 8),
        Text(
          '${student.firstName} ${student.lastName}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'GothamRounded',
          ),
        ),
        Text(
          student.career,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/svgs/university.svg',
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 8),
            const Flexible(
              child: Text(
                '¿QUÉ ESTÁ PASANDO EN TU UNIVERSIDAD?',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  fontFamily: 'GothamRounded',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
