import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/elevated_circle_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/course/presentation/screens/course_carrousel.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';
import 'package:wabu/features/teachers/domain/domain.dart';
import 'package:wabu/utils/utils.dart';

class CourseProfileContainer extends ConsumerWidget {
  const CourseProfileContainer({
    super.key,
    required this.teacher,
    required this.course,
  });

  final TeacherV2 teacher;
  final TeacherCourseV2 course;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                          fontSize: 12,
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
                  FirebaseAnalyticsHandler.instance.logSelectContent(
                    contentType: AnalyticsContentType.card.contentType,
                    itemId: AnalyticsContentItemId.teacherProfileCourse.itemId,
                  );
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
          onPressed: () {
            FirebaseAnalyticsHandler.instance.logSelectContent(
              contentType: AnalyticsContentType.button.contentType,
              itemId: AnalyticsContentItemId.teacherProfileSmash.itemId,
            );

            final teacherSuggestion = SmashSuggestion(
              course: SmashSuggestionCourse(
                idCourse: course.id,
                name: course.name,
              ),
              teacher: SmashSuggestionTeacher(
                idTeacher: teacher.id,
                firstName: teacher.firstName,
                lastName: teacher.lastName,
                photoUrl: teacher.photoUrl,
              ),
            );

            context.pushNamed(
              TeacherRequiredRatingScreen.name,
              extra: teacherSuggestion,
            );
          },
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
