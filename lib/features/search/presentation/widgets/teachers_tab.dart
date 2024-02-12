// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/features/search/presentation/widgets/teachers_tab_container.dart';
import 'package:wabu/features/teachers/domain/teacher/teacher.dart';

class TeachersTab extends StatefulWidget {
  @override
  _TeachersTabState createState() => _TeachersTabState();
}

class _TeachersTabState extends State<TeachersTab> {
  List<Teacher> resultTeachers = [
    Teacher(
        firstName: 'Juan',
        lastName: 'Pérez',
        profileUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrggIP1tphFNHqBURDu-6QY1TiSJVXQy0Uuw&usqp=CAU',
        information: '4.5'),
    Teacher(
        firstName: 'María',
        lastName: ' Gómez',
        profileUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrggIP1tphFNHqBURDu-6QY1TiSJVXQy0Uuw&usqp=CAU',
        information: '4.2'),
    Teacher(
        firstName: 'Carlos',
        lastName: ' Rodríguez',
        profileUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrggIP1tphFNHqBURDu-6QY1TiSJVXQy0Uuw&usqp=CAU',
        information: '4.8'),
    Teacher(
        firstName: 'Ana',
        lastName: ' Martínez',
        profileUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrggIP1tphFNHqBURDu-6QY1TiSJVXQy0Uuw&usqp=CAU',
        information: '4.1'),
  ];
  // int pagina = 100;
  // String? _searchTerm;
  @override
  void initState() {
    //_getClientes();
    super.initState();
  }

  bool _ordenAscendente = false;

  void _ordenarLista() {
    setState(() {
      _ordenAscendente = !_ordenAscendente;
      if (_ordenAscendente) {
        resultTeachers.sort((a, b) => a.firstName!.compareTo(b.firstName ?? ''));
      } else {
        resultTeachers.sort((a, b) => b.firstName!.compareTo(a.firstName ?? ''));
      }
    });
  }

  void mejorCalificados() {
    setState(() {   
        resultTeachers.sort((a, b) => b.information!.compareTo(a.information ?? ''));     
    });
  }

   final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.sort_by_alpha,color: Color.fromRGBO(41,146,244,1.000),);
      }
      return const Icon(Icons.sort_by_alpha_sharp);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        child: resultTeachers.isNotEmpty
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: mejorCalificados,
                            child: Row(
                              children: [
                                Text('Mejor Calificados'),
                                SvgPicture.asset('assets/images/svgs/star.svg',
                                    color: Color.fromRGBO(255, 195, 42, 1.000))
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Switch(
                          thumbIcon: thumbIcon,
                          value: _ordenAscendente,
                          onChanged: (bool value) {
                            _ordenarLista();
                          },
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemCount: resultTeachers.length,
                      itemBuilder: (context, index) {
                        return TeachersTabContainer(
                            teacher: resultTeachers[index]);
                      },
                    ),
                  ),
                ],
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Padding(
                      padding: EdgeInsets.all(16.0),
                      child:
                          SvgPicture.asset(
                              'assets/images/svgs/emoji_sad_missing.svg',                        
                            ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child:
                          Text('No se encontraron \n profesores con tu \n búsqueda',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                  color: Color.fromRGBO(191,191,191,1.000),
                                  fontFamily: 'Gotham Rounded',
                                  fontSize: 24,
                                  height: 30 / 26,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('Intenta buscando con \n menos caracteres',
                        textAlign: TextAlign.center,
                            style: TextStyle(
                                  color: Color.fromRGBO(191,191,191,1.000),
                                  fontFamily: 'Gotham Rounded',
                                  fontSize: 24,
                                  height: 30 / 26,
                                  fontWeight: FontWeight.bold,
                                ),),
                    )
                  ],
                ),
              ));
  }
}
  /*  
  void _updateSearchTerm(String searchTerm) {
    _searchTerm = searchTerm;
    _pagingController.refresh();
  }*/

