import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/elevated_circle_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/course/presentation/screens/course_carrousel.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

class CourseProfileContainer extends StatelessWidget {
  const CourseProfileContainer({
    super.key,
    required this.course,
  });

  final TeacherCourseV2 course;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            elevation: 4.0,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(5))),
              child: InkWell(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        course.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 8),
                        Text(
                            (course.manyAverageQualifications)
                                .toStringAsFixed(2),
                            style: const TextStyle(
                              color: AppTheme.starColor,
                              fontFamily: 'SFProDisplay',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                        SvgPicture.asset(
                          'assets/images/svgs/star.svg',
                          height: 14,
                          width: 14,
                        ),
                        const SizedBox(width: 8),
                        Text((course.manyQualifications).toString(),
                            style: const TextStyle(
                              color: AppTheme.courseNameColor,
                              fontFamily: 'SFProDisplay',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                        SvgPicture.asset(
                          'assets/images/svgs/teacher_icon.svg',
                          color: AppTheme.courseNameColor,
                          height: 14,
                          width: 14,
                        ),
                        const SizedBox(width: 8),
                        Text((course.manyComments).toString(),
                            style: const TextStyle(
                              color: Color.fromRGBO(41, 146, 244, 1.000),
                              fontFamily: 'SFProDisplay',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                        SvgPicture.asset(
                          'assets/images/svgs/message.svg',
                          height: 14,
                          width: 14,
                          color: const Color.fromRGBO(41, 146, 244, 1.000),
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
                onTap: () {
                  context.pushNamed(
                    CourseCarrousel.name,
                    extra: course.id,
                  );
                },
              ),
            ),
          ),
        ),
        ElevatedCircleButton(
          backgroundColor: AppTheme.smashTeacherBackgroundButton,
          padding: 0,
          onPressed: () {},
          child: SvgPicture.asset(
            'assets/images/svgs/smash_button.svg',
            width: 17,
            height: 17,
          ),
        ),
      ],
    );
  }
}
