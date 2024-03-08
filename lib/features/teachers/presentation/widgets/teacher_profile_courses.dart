import 'package:flutter/material.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

import 'course_profile_container.dart';

class TeacherProfileCourses extends StatelessWidget {
 
   TeacherProfileCourses({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

/*  bool hasOptionalQualifications(Teacher? teacher) {
    final optionalQualifications = teacher?.course?.optionalQualifications;

    if (optionalQualifications == null) return false;

    for (var element in optionalQualifications) {
      if ((element.countQualifications ?? 0) > 0) {
        return true;
      }
    }

    return false;
  }*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 32,
      ),
      child: Container(
        height: 900,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        child:  ListView.builder(
                      padding: const EdgeInsets.all(5.0),
                      itemCount: listCursos.length,
                      itemBuilder: (context, index) {
                        return CourseProfileContainer(
                          course: listCursos[index],
                        );
                      },  
                    ),
             
       
      ),
    );
  }
}


class Cursos {
  late String ? idCurso;
  String ? name;


  Cursos({
    required String idCurso,
    name = '',

  }){
    this.idCurso = idCurso;
    this.name = name;

  }

}
final List<Cursos> listCursos = [
  Cursos(idCurso: '1', name: 'Comunicacion'),
  Cursos(idCurso: '2', name: 'Matematicas'),
  Cursos(idCurso: '3', name: 'Ciencias'),
  Cursos(idCurso: '4', name: 'Lenguaje'),
  Cursos(idCurso: '5', name: 'Idiomas'),


];