// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/search/domain/teachers_search_result/teachers_search_result.dart';
import 'package:wabu/features/teachers/domain/entities.dart';
import 'package:wabu/features/teachers/domain/teacher_course_extra/teacher_course_extra.dart';
import 'package:wabu/features/teachers/presentation/presentation.dart';
import 'package:wabu/features/teachers/presentation/screens/teacher_profile_screen.dart';

class TeachersTabContainer extends StatelessWidget {
  const TeachersTabContainer({
    super.key,
    required this.teacher,
  });

  final TeachersSearchResult teacher;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                teacher.photoUrl ?? '',
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '${teacher.firstName} ${teacher.lastName}',
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: AppTheme.courseNameColor,
                fontFamily: 'SFProDisplay',
                fontSize: 17,
                height: 20 / 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.0, right: 2.0),
                  child: Text(
                    ((teacher.manyQualifications ?? 0) != 0)
                        ? (teacher.manyAverageQualifications ?? 0)
                            .toStringAsFixed(2)
                        : 'N/A',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 195, 42, 1.000),
                      fontFamily: 'SFProDisplay',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.0, right: 4.0),
                  child: SvgPicture.asset('assets/images/svgs/star.svg',
                      height: 15,
                      width: 15,
                      color: Color.fromRGBO(255, 195, 42, 1.000)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.0, right: 2.0),
                  child: Text(
                    (teacher.manyComments ?? 0).toString(),
                    style: TextStyle(
                      color: Color.fromRGBO(42, 203, 255, 1.000),
                      fontFamily: 'SFProDisplay',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.0, right: 4.0),
                  child: SvgPicture.asset(
                    'assets/images/svgs/message.svg',
                    height: 15,
                    width: 15,
                    color: Color.fromRGBO(42, 203, 255, 1.000),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.0, right: 2.0),
                  child: Text(
                    (teacher.manyQualifications ?? 0).toString(),
                    style: TextStyle(
                      color: AppTheme.student,
                      fontFamily: 'SFProDisplay',
                      fontSize: 15,
                      height: 20 / 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.0, right: 4.0),
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
        ),
      ),
      onTap: () {
        context.pushNamed(
          TeacherProfileScreen.name,
          extra: Teacher(idTeacher: teacher.idTeacher, firstName: teacher.firstName, lastName: teacher.lastName, profileUrl: teacher.photoUrl)
        );
      },
    );
  }
}
