// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/features/search/course_tab_container.dart';
import 'package:wabu/features/search/teachers_tab_container.dart';
import 'package:wabu/features/teachers/domain/entities.dart';
import 'package:wabu/features/teachers/domain/teacher/teacher.dart';

class CourseTab extends StatefulWidget {
  @override
  _CourseTabState createState() => _CourseTabState();
}

class _CourseTabState extends State<CourseTab> {
  List<TeacherCourse> resultTeachersCourse = [
    TeacherCourse(
        idCourse: '1',
        name: 'Teoria de la Comunicacion I',
        manyComments: 3,
        manyQualifications: 23),
    TeacherCourse(
        idCourse: '1',
        name: 'Teoria de la Comunicacion II',
        manyComments: 2,
        manyQualifications: 45),
    TeacherCourse(
        idCourse: '1',
        name: 'Teoria de la Comunicacion III',
        manyComments: 4,
        manyQualifications: 53),
    TeacherCourse(
        idCourse: '1',
        name: 'Teoria de la Comunicacion IV',
        manyComments: 3,
        manyQualifications: 14),
    TeacherCourse(
        idCourse: '1',
        name: 'Teoria de la Comunicacion V',
        manyComments: 4,
        manyQualifications: 52)
  ];
  // int pagina = 100;
  // String? _searchTerm;
  @override
  void initState() {
    //_getClientes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: resultTeachersCourse.isNotEmpty
            ? Column(children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(5.0),
                    itemCount: resultTeachersCourse.length,
                    itemBuilder: (context, index) {
                      return CourseTabContainer(
                        teacherCourse: resultTeachersCourse[index],
                      );
                    },
                  ),
                )
              ])
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        'assets/images/svgs/emoji_sad_missing.svg',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'No se encontraron \n cursos con tu \n búsqueda',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(191, 191, 191, 1.000),
                          fontFamily: 'Gotham Rounded',
                          fontSize: 24,
                          height: 30 / 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Intenta buscando con \n menos caracteres',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(191, 191, 191, 1.000),
                          fontFamily: 'Gotham Rounded',
                          fontSize: 24,
                          height: 30 / 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ));
  }

  /*  
  void _updateSearchTerm(String searchTerm) {
    _searchTerm = searchTerm;
    _pagingController.refresh();
  }*/
}
