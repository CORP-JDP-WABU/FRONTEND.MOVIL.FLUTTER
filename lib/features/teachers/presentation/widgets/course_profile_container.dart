import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/elevated_circle_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/search/domain/courses_search_result/courses_search_result.dart';
import 'package:wabu/features/course/presentation/screens/course_carrousel.dart';
import 'package:wabu/features/teachers/presentation/widgets/teacher_profile_courses.dart';

class CourseProfileContainer extends StatelessWidget {
  const CourseProfileContainer({
    super.key,
    required this.course,
  });

  final Cursos course;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Card(
              elevation: 4.0,
              child: Container(
                //width: 250,
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(5))),
                  child: InkWell(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.name ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
          
                        /* Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 7.0, right: 5.0),
                                  child: Text((0).toString(),
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
                                  child: Text(( 0).toString(),
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
                            )*/
                      ],
                    ),
                    onTap: () {
                      context.pushNamed(
                        CourseCarrousel.name,
                        extra: course.idCurso,
                      );
                    },
                  ))),
        ),
         Expanded(
          flex: 1,
          child: ElevatedCircleButton(
              backgroundColor: AppTheme.smashTeacherBackgroundButton,
              padding: 12,
              onPressed: () {
                
              },
              child: SvgPicture.asset('assets/images/svgs/smash_button.svg',
              width: 17, height: 17,),
            ),
        ),
      ],
    )
            
            ;
  }
}
