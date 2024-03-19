import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../config/theme/app_theme.dart';

class CourseDetailsCard extends StatelessWidget {
  const CourseDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 8),
            const Text(
              "Teoría de la Comunicación",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'SFProDisplay',
                height: 24 / 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 8),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text('4.2',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SFProDisplay',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(width: 4),
                        SvgPicture.asset(
                          'assets/images/svgs/star.svg',
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const Text('Calificación',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SFProDisplay',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const SizedBox(width: 8),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text('214',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SFProDisplay',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(width: 4),
                        SvgPicture.asset(
                          'assets/images/svgs/message.svg',
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const Text('Comentarios',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'SFProDisplay',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                const SizedBox(width: 8),
              ],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
