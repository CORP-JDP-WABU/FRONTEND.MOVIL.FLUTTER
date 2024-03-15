import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/common/widgets/discrete_bar_qualification.dart';
import 'package:wabu/common/widgets/gradients/button_linear_gradient.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/compare/compare.dart';
import 'package:wabu/features/course/domain/course_teacher/course_teacher.dart';
import 'package:wabu/features/teachers/domain/teacher_course_extra/teacher_course_extra.dart';
import 'package:wabu/features/teachers/presentation/presentation.dart';

const workQualification = ['-', 'No sé', 'Poco', 'Medio', 'Mucho'];
const lateQualification = ['-', 'No sé', 'Nunca', 'A veces', 'Siempre'];
const assistanceQualification = ['-', 'No sé', 'Nunca', 'A veces', 'Siempre'];

class CardViewCarrouselCompare extends StatelessWidget {
  const CardViewCarrouselCompare({
    super.key,
    required this.courseId,
    required this.compareTeacher,
  });

  final CompareTeacher compareTeacher;
  final String courseId;

  double getQualificationValueByCode(int code) {
    final requiredQualifications = compareTeacher.requiredQualification;

    switch (code) {
      case 1:
        final value = requiredQualifications.lear;
        return value;
      case 2:
        final value = requiredQualifications.hight;
        return value;
      case 3:
        final value = requiredQualifications.goodPeople;
        return value;
    }

    return 0.00;
  }

  String getOptionalQualificationValueByCode(int code) {
    final optionalQualifications = compareTeacher.optionalQualification;

    switch (code) {
      case 4:
        final index = optionalQualifications.worked;
        return workQualification[index];
      case 5:
        final index = optionalQualifications.late;
        return lateQualification[index];
      case 6:
        final index = optionalQualifications.assistance;
        return assistanceQualification[index];
    }

    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6, right: 6, bottom: 8),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  )
                ],
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(25), bottom: Radius.circular(25))),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Material(
                        shape: const CircleBorder(
                            side: BorderSide(
                                color: Color.fromRGBO(38, 137, 245, 1.000),
                                width: 3)),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              compareTeacher.photoUrl ?? '',
                              scale: 60),
                        ),
                      ),
                    )),
                    Flexible(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          compareTeacher.firstName ?? '',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color.fromRGBO(2, 51, 106, 1.000),
                            fontFamily: 'SFProDisplay',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          compareTeacher.lastName ?? '',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color.fromRGBO(2, 51, 106, 1.000),
                            fontFamily: 'SFProDisplay',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 2.0),
                              child: Text(
                                  (compareTeacher.manyAverageQualifications ??
                                          0)
                                      .toStringAsFixed(2),
                                  style: const TextStyle(
                                    color: Color.fromRGBO(255, 195, 42, 1.000),
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 2.0, right: 4.0),
                              child: SvgPicture.asset(
                                  'assets/images/svgs/star.svg',
                                  height: 15,
                                  width: 15,
                                  color: const Color.fromRGBO(
                                      255, 195, 42, 1.000)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 2.0),
                              child: Text(
                                  (compareTeacher.manyComments ?? 0).toString(),
                                  style: const TextStyle(
                                    color: Color.fromRGBO(42, 203, 255, 1.000),
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 2.0, right: 4.0),
                              child: SvgPicture.asset(
                                'assets/images/svgs/message.svg',
                                height: 15,
                                width: 15,
                                color:
                                    const Color.fromRGBO(42, 203, 255, 1.000),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 2.0),
                              child: Text(
                                  (compareTeacher.manyQualifications ?? 0)
                                      .toString(),
                                  style: const TextStyle(
                                    color: AppTheme.student,
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 2.0, right: 4.0),
                              child: SvgPicture.asset(
                                'assets/images/svgs/person.svg',
                                height: 15,
                                width: 15,
                                color: AppTheme.student,
                              ),
                            ),
                          ],
                        )
                      ],
                    ))
                  ],
                ),
                const SizedBox(height: 5),
                Column(
                  children: [
                    DiscreteBarQualification(
                      asset: 'brain',
                      text: '¿QUÉ TANTO APRENDISTE?',
                      color: AppTheme.primaryStatsColor,
                      value: getQualificationValueByCode(1),
                      count: 5,
                    ),
                    DiscreteBarQualification(
                      asset: 'parchment',
                      text: '¿QUÉ TAN ALTO CALIFICA',
                      color: AppTheme.secondaryStatsColor,
                      value: getQualificationValueByCode(2),
                      count: 5,
                    ),
                    DiscreteBarQualification(
                      asset: 'heart',
                      text: '¿QUÉ TAN BUENA GENTE ES?',
                      color: AppTheme.tertiaryStatsColor,
                      value: getQualificationValueByCode(3),
                      count: 5,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 42, vertical: 3),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Carga Académica',
                              style: TextStyle(
                                color: Color.fromRGBO(97, 20, 144, 1.000),
                                fontFamily: 'SFProDisplay',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                                height: 16,
                                width: 55,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25),
                                      bottom: Radius.circular(25),
                                    ),
                                    border: Border.fromBorderSide(BorderSide(
                                      color:
                                          Color.fromRGBO(139, 48, 194, 1.000),
                                    ))),
                                child: Text(
                                  getOptionalQualificationValueByCode(4),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(97, 20, 144, 1.000),
                                    fontFamily: 'SFProDisplay',
                                    fontSize: 12,
                                    height: 16 / 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Exigencia',
                              style: TextStyle(
                                color: Color.fromRGBO(139, 48, 194, 1.000),
                                fontFamily: 'SFProDisplay',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                                height: 16,
                                width: 55,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25),
                                      bottom: Radius.circular(25),
                                    ),
                                    border: Border.fromBorderSide(BorderSide(
                                      color:
                                          Color.fromRGBO(139, 48, 194, 1.000),
                                    ))),
                                child: Text(
                                  getOptionalQualificationValueByCode(4),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color.fromRGBO(97, 20, 144, 1.000),
                                    fontFamily: 'SFProDisplay',
                                    height: 16 / 15,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Toma Asistencia',
                                style: TextStyle(
                                  color: Color.fromRGBO(193, 91, 255, 1.000),
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                  height: 16,
                                  width: 55,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(25),
                                        bottom: Radius.circular(25),
                                      ),
                                      border: Border.fromBorderSide(BorderSide(
                                        color:
                                            Color.fromRGBO(139, 48, 194, 1.000),
                                      ))),
                                  child: Text(
                                    getOptionalQualificationValueByCode(6),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(97, 20, 144, 1.000),
                                      fontFamily: 'SFProDisplay',
                                      fontSize: 12,
                                      height: 16 / 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ))
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -16,
          child: CustomFilledButton(
            text: 'VER DETALLE',
            textColor: Colors.white,
            verticalPadding: 9,
            linearGradient: primaryButtonLinearGradient,
            onPressed: () {
              context.pushNamed(
                TeacherCourseProfileScreen.name,
                extra: TeacherCourseExtra(
                  teacherId: compareTeacher.idTeacher ?? '',
                  courseId: courseId,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
