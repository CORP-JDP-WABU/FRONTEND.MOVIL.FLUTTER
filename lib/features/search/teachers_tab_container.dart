// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class TeachersTabContainer extends StatelessWidget {
  final Teacher teacher;

    TeachersTabContainer({
    Key? key,
    required this.teacher,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        teacher.profileUrl??'',
                      
                      ),  
                      SizedBox(height: 8,),
                      Text('${teacher.firstName} ${teacher.lastName}',
                        style: TextStyle(
                                  color: AppTheme.courseNameColor,
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 17,
                                  height: 20 / 17,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                          SizedBox(height: 8,),
                      Row(children: [
                         Padding(
                            padding: EdgeInsets.only(left: 4.0, right: 2.0),
                            child: Text(
                              (teacher.information ?? 0)
                                  .toString(),
                            style: TextStyle(
                                  color: Color.fromRGBO(255,195,42,1.000),
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 17,
                                  height: 20 / 17,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        Padding(
                            padding: EdgeInsets.only(left: 2.0, right: 4.0),
                            child: SvgPicture.asset(
                              'assets/images/svgs/star.svg',
                              color:Color.fromRGBO(255,195,42,1.000)
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.0, right: 2.0),
                            child: Text(
                              (teacher.information ?? 0)
                                  .toString(),
                            style: TextStyle(
                                  color: Color.fromRGBO(42,203,255,1.000),
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 17,
                                  height: 20 / 17,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.0, right: 4.0),
                            child: SvgPicture.asset(
                              'assets/images/svgs/message.svg',
                              color: Color.fromRGBO(42, 203, 255, 1.000),
                            ),
                          ),
                       Padding(
                            padding: EdgeInsets.only(left: 4.0, right: 2.0),
                            child: Text(
                              (teacher.information ?? 0)
                                  .toString(),
                            style: TextStyle(
                                  color: AppTheme.student,
                                  fontFamily: 'SFProDisplay',
                                  fontSize: 17,
                                  height: 20 / 17,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.0, right: 4.0),
                            child: SvgPicture.asset(
                              'assets/images/svgs/person.svg',
                              color: AppTheme.student,
                            ),
                          ),
                    
                      ],)
                    ],
                  ),
                ),
      onTap: () {
        /*Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => TeachersTabDetail(
              clients: this.clients,
            ),
          ),
        );*/
      },
    );
  }
}
