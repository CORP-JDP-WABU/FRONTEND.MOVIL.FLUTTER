import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/course/course.dart';
import 'package:wabu/features/search/domain/courses_search_result/courses_search_result.dart';
import 'package:wabu/utils/utils.dart';

class CourseTabContainer extends StatelessWidget {
  const CourseTabContainer({
    super.key,
    required this.course,
  });

  final CoursesSearchResult course;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 4.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flex(
                direction: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        // Envuelve el texto en Expanded
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            course.name ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 7.0, right: 5.0),
                            child: Text((course.countTeachers ?? 0).toString(),
                                style: const TextStyle(
                                  color: AppTheme.courseNameColor,
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 5.0, right: 10.0),
                            child: SvgPicture.asset(
                                'assets/images/svgs/teacher_icon.svg',
                                color: AppTheme.courseNameColor),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 5.0),
                            child: Text((course.countComment ?? 0).toString(),
                                style: const TextStyle(
                                  color: Color.fromRGBO(41, 146, 244, 1.000),
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 5.0, right: 10.0),
                            child: SvgPicture.asset(
                              'assets/images/svgs/file_icon.svg',
                              color: const Color.fromRGBO(41, 146, 244, 1.000),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      onTap: () {
        FirebaseAnalyticsHandler.instance.logSelectContent(
          contentType: AnalyticsContentType.card.contentType,
          itemId: AnalyticsContentItemId.courseSearchCard.itemId,
        );

        context.pushNamed(
          CourseProfileView.name,
          extra: course.idCourse,
        );
      },
    );
  }
}
