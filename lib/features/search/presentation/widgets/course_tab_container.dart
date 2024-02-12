// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class CourseTabContainer extends StatelessWidget {
  final TeacherCourse teacherCourse;

  CourseTabContainer({
    Key? key,
    required this.teacherCourse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 4.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
          height: 50,
          decoration: BoxDecoration(
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
                      Text(
                        (teacherCourse.name ?? 0).toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 2.0, right: 7.0),
                            child: Text(
                                (teacherCourse.manyComments ?? 0).toString(),
                                style: TextStyle(
                                  color: AppTheme.courseNameColor,
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 17,
                                  height: 20 / 17,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.0, right: 20.0),
                            child: SvgPicture.asset(
                              'assets/images/svgs/teacher_icon.svg',
                              color:AppTheme.courseNameColor
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 7.0),
                            child: Text(
                              (teacherCourse.manyQualifications ?? 0)
                                  .toString(),
                            style: TextStyle(
                                  color: Color.fromRGBO(41,146,244,1.000),
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 17,
                                  height: 20 / 17,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7.0, right: 2.0),
                            child: SvgPicture.asset(
                              'assets/images/svgs/file_icon.svg',
                              color: Color.fromRGBO(41, 146, 244, 1.000),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),

                  /*Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: this.clients
                          ? AppConfig.cBlue002
                          : AppConfig.cOrange001,
                    ),
                    child: this.clients.isRead
                        ? Text(
                            'Encuestado',
                            style: TextStyle(
                              color: AppConfig.cWhite001,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            'Nuevo',
                            style: TextStyle(
                              color: AppConfig.cWhite001,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  )*/
                ],
              )
            ],
          ),
        ),
      ),
      onTap: () {
        /*Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => CourseTabDetail(
              clients: this.clients,
            ),
          ),
        );*/
      },
    );
  }
}
