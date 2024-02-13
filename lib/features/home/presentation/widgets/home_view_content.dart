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
    return SingleChildScrollView(
        child: Column(
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
        const Text(
          'Marcos Aliaga',
          // '${student.firstName} ${student.lastName}',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'GothamRounded',
          ),
        ),
        const Text(
          'Comunicación y Plublicidad',
          //student.career,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
        ),
        Center(
          child: ElevatedButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(84, 27)),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/coin.png'),
                  const GradientText(
                    text: '1925',
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(54, 181, 236, 1.000),
                        Color.fromRGBO(47, 163, 240, 1.000),
                        Color.fromRGBO(38, 137, 245, 1.000),
                      ],
                         begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                      stops: [0.0, 0.3, 1.0],
                    ),
                    style: TextStyle(
                        fontFamily: 'SFProDisplay',
                    fontSize: 17,
                    height: 31 / 23,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 38),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/svgs/university.svg',
              width: 32,
              height: 32,
            ),
            const Flexible(
              child: Text(
                'TODO EL CONTENIDO QUE TENEMOS EN TU UNIVERSIDAD:',
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
    ));
  }
}
