// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:wabu/features/search/presentation/views/search_result.dart';
import 'package:wabu/features/search/presentation/widgets/card_view.dart';
import 'package:wabu/features/search/presentation/controllers/card_data.dart';

class SearchScreen extends StatefulWidget {
  static const String name = "search_screen";
  static const String route = "/$name";

  const SearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreen();
}

class _SearchScreen extends State<SearchScreen> {
  final CardSwiperController controller = CardSwiperController();
  TextEditingController _controller = TextEditingController();
  final cards = candidates.map(CardView.new).toList();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
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
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const SizedBox(height: 25),
              Center(
                child: Text(
                  '¡Comienza',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gotham Rounded',
                    fontSize: 38,
                    height: 31 / 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Tu Búsqueda!',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Gotham Rounded',
                    fontSize: 38,
                    height: 31 / 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Card(
                  elevation: 4.0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    height: 65,
                    width: 343,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                            bottom: Radius.circular(25))),
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
                          icon:
                              SvgPicture.asset('assets/images/svgs/search.svg'),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                      elevation: 4.0,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 194, 253, 1.000),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10),
                                  bottom: Radius.circular(10))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Calificaciones a \n profesores',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SFProDisplay',
                                          fontSize: 17,
                                          height: 20 / 17,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 7.0, right: 2.0),
                                      child: SvgPicture.asset(
                                          'assets/images/svgs/teacher_icon.svg',
                                          width: 34,
                                          height: 38,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 7.0, right: 2.0),
                                        child: Text('1821',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'SFProDisplay',
                                              fontSize: 36,
                                              height: 40 / 36,
                                              fontWeight: FontWeight.bold,
                                            )))
                                  ],
                                )
                              ]))),
                  Card(
                      elevation: 4.0,
                      child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 5.0),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: const [
                                  Color.fromRGBO(101, 16, 153, 1.000),
                                  Color.fromRGBO(158, 0, 225, 1.000),
                                ], // Cambia los colores según tu preferencia
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10),
                                  bottom: Radius.circular(10))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Documentos \n subidos',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SFProDisplay',
                                          fontSize: 17,
                                          height: 20 / 17,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 7.0, right: 2.0),
                                      child: SvgPicture.asset(
                                          'assets/images/svgs/file_icon.svg',
                                          width: 34,
                                          height: 38,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 7.0, right: 2.0),
                                        child: Text('1243',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'SFProDisplay',
                                              fontSize: 36,
                                              height: 40 / 36,
                                              fontWeight: FontWeight.bold,
                                            )))
                                  ],
                                )
                              ]))),
                  /* IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/svgs/Smash Blue.svg',
                    ),
                    onPressed: () {
                      controller.swipe(CardSwiperDirection.right);
                      context.pushNamed(CompareTeachersScreen.name);
                    },
                  ),*/
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Team Work.png',
                  )
                  /* IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/svgs/Smash Blue.svg',
                    ),
                    onPressed: () {
                      controller.swipe(CardSwiperDirection.right);
                      context.pushNamed(CompareTeachersScreen.name);
                    },
                  ),*/
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}