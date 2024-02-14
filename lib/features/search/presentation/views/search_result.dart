// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/search/presentation/widgets/course_tab.dart';
import 'package:wabu/features/search/presentation/widgets/teachers_tab.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  static const String name = "search_result";
  static const String route = "/$name";
  @override
  _SearchResult createState() => _SearchResult();
}

class _SearchResult extends State<SearchResult>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List recordsListEvaluaciones = [];
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 165,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(54, 181, 236, 1.000),
                      Color.fromRGBO(47, 163, 240, 1.000),
                      Color.fromRGBO(38, 137, 245, 1.000),
                    ], // Cambia los colores según tu preferencia
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                  ),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(65))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      height: 65,
                      width: 343,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                            bottom: Radius.circular(25)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 65),
                              child: TextField(
                                controller: _controller,
                                decoration: InputDecoration(
                                  hintText: 'Busca un curso o profesor...',
                                  hintStyle: TextStyle(
                                    color: Color.fromRGBO(191, 191, 191, 1.000),
                                    fontFamily: 'Gotham Rounded',
                                    fontSize: 16,
                                    height: 20 / 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              context.pushNamed(SearchResult.name);
                            },
                            icon: SvgPicture.asset(
                                'assets/images/svgs/search.svg'),
                          )
                        ],
                      ),
                    ),
                  
                  SizedBox(width: 10),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: TabBar(
                labelColor: Color.fromRGBO(41, 146, 244, 1.000),
                unselectedLabelColor: AppTheme.student,
                labelStyle: TextStyle(
                    fontFamily: 'SFProDisplay', fontWeight: FontWeight.bold),
                unselectedLabelStyle: TextStyle(
                    fontFamily: 'SFProDisplay', fontWeight: FontWeight.normal),
                indicatorColor: Color.fromRGBO(41, 146, 244, 1.000),
                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                tabs: [
                  Tab(
                    text: 'Profesores (15)',
                  ),
                  Tab(
                    text: 'Cursos (26)',
                  ),
                ],
                controller: _tabController,
              ),
            ),
            Expanded(
              flex: 1,
              child: TabBarView(
                controller: _tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  // Contenido de la pestaña 'Lista Clientes'
                  TeachersTab(),

                  CourseTab(),
                  // Contenido de la pestaña 'Mapa'
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
