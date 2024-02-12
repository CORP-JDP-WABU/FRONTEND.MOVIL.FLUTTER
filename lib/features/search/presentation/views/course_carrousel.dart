// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/smash/presentation/screens/teacher_rating_step2.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CourseCarrousel extends StatefulWidget {
  static const String name = "course_carrousel";
  static const String route = "/$name";

  const CourseCarrousel({
    Key? key,
  }) : super(key: key);

  @override
  State<CourseCarrousel> createState() => _CourseCarrousel();
}

class _CourseCarrousel extends State<CourseCarrousel> {
  final CardSwiperController controller = CardSwiperController();
  var isSelected = false;
  var cards = teacherCarrousel.map(CardViewCarrousel.new).toList();

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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Color.fromRGBO(54, 181, 236, 1.000),
              Color.fromRGBO(47, 163, 240, 1.000),
              Color.fromRGBO(38, 137, 245, 1.000),
            ], // Cambia los colores según tu preferencia
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(
                    color: Colors.white,
                    onTap: () => context.pop(),
                  ),
                  IconButton(
                    icon: SvgPicture.asset('assets/images/svgs/menu.svg'),
                    color: Colors.white,
                    onPressed: () => {},
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Teoria de la Comunicacion:',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SFProDisplay',
                    fontSize: 17,
                    height: 31 / 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              cards.isNotEmpty
                  ? SizedBox(
                      height: 700,
                      width: double.infinity,
                      child: CardSwiper(
                        controller: controller,
                        cardsCount: cards.length,
                        onSwipe: _onSwipe,
                        onUndo: _onUndo,
                        onEnd: _showNoMoreCards,
                        numberOfCardsDisplayed: cards.length,
                        backCardOffset: const Offset(40, 40),
                        padding: const EdgeInsets.all(4.0),
                        cardBuilder: (
                          context,
                          index,
                          horizontalThresholdPercentage,
                          verticalThresholdPercentage,
                        ) =>
                            cards[index],
                      ),
                    )
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
                              'No hay profesores \n vinculados a este curso \n todavía',
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
                              'Puedes sugerirlos en el \n botón arriba a la\n derecha',
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
                    ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCircularButton('star'),
                  _buildCircularButton('brain'),
                  _buildCircularButton('parchment'),
                  _buildCircularButton('heart'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDescriptionText("Mejor calificación"),
                  _buildDescriptionText("¿Qué tanto aprendiste?"),
                  _buildDescriptionText("¿Qué tan alto califica?"),
                  _buildDescriptionText("¿Qué tan buena gente es?"),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildCircularButton(String asset) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isSelected = true;
        });
      },
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        elevation: 4,
      ),
      child: Padding(
          padding: EdgeInsets.all(14.0),
          child: SvgPicture.asset('assets/images/svgs/$asset.svg',
              color: isSelected
                  ? Color.fromRGBO(255, 195, 42, 1.000)
                  : Color.fromRGBO(191, 191, 191, 1.000))),
    );
  }

  Widget _buildDescriptionText(String text) {
    return SizedBox(
      width: 100,
      child: Text(
        text,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
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

  _showNoMoreCards() {
    setState(() {
      cards = [];
    });
  }
}

class IntervalQualification extends StatefulWidget {
  final String asset;
  final String text;
  final Color color;
  final double value;
  final int count;

  const IntervalQualification({
    Key? key,
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
    required this.count,
  }) : super(key: key);

  @override
  _IntervalQualification createState() => _IntervalQualification();
}

class _IntervalQualification extends State<IntervalQualification> {
  //late final _ratingController;
  late double _rating;

  @override
  void initState() {
    super.initState();
    //_ratingController = TextEditingController(text: '3.0');
    _rating = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/svgs/${widget.asset}.svg'),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.text,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: widget.color,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                RatingBar.builder(
                  initialRating: _rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  unratedColor: AppTheme.progressBarBackgroundColor,
                  itemCount: 5,
                  itemSize: 40.0,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Container(
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 20,
                      width: 127),
                  onRatingUpdate: (rating) {
                    print('Rating updated: $rating');
                    setState(() {
                      _rating = rating;
                    });
                  },
                  updateOnDrag: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardViewCarrousel extends StatelessWidget {
  final CarrouselData candidate;

  const CardViewCarrousel(
    this.candidate, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(25), bottom: Radius.circular(25))),
        child: Column(children: [
          const SizedBox(height: 26),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Material(
                  shape: const CircleBorder(
                      side: BorderSide(
                          color: Color.fromRGBO(38, 137, 245, 1.000),
                          width: 3)),
                  child: CircleAvatar(
                    radius: 72,
                    backgroundImage:
                        NetworkImage(candidate.imageAsset, scale: 144),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    candidate.nombre,
                    style: TextStyle(
                      color: Color.fromRGBO(2, 51, 106, 1.000),
                      fontFamily: 'SFProDisplay',
                      fontSize: 20,
                      height: 31 / 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    candidate.apellido,
                    style: TextStyle(
                      color: Color.fromRGBO(2, 51, 106, 1.000),
                      fontFamily: 'SFProDisplay',
                      fontSize: 20,
                      height: 31 / 23,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.0, right: 2.0),
                        child: Text((4.2).toString(),
                            style: TextStyle(
                              color: Color.fromRGBO(255, 195, 42, 1.000),
                              fontFamily: 'SFProDisplay',
                              fontSize: 17,
                              height: 20 / 17,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.0, right: 4.0),
                        child: SvgPicture.asset('assets/images/svgs/star.svg',
                            color: Color.fromRGBO(255, 195, 42, 1.000)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.0, right: 2.0),
                        child: Text((11).toString(),
                            style: TextStyle(
                              color: Color.fromRGBO(42, 203, 255, 1.000),
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
                        child: Text((13).toString(),
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
                    ],
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              IntervalQualification(
                asset: 'brain',
                text: '¿QUÉ TANTO APRENDISTE?',
                color: AppTheme.primaryStatsColor,
                value: (3),
                count: 5,
              ),
              IntervalQualification(
                asset: 'parchment',
                text: '¿QUÉ TAN ALTO CALIFICA?',
                color: AppTheme.secondaryStatsColor,
                value: (4),
                count: 5,
              ),
              IntervalQualification(
                asset: 'heart',
                text: '¿QUÉ TAN BUENA GENTE ES?',
                color: AppTheme.tertiaryStatsColor,
                value: (1),
                count: 5,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 6),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Carga Académica',
                      style: TextStyle(
                        color: Color.fromRGBO(97, 20, 144, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 15,
                        height: 20 / 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(55, 16)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            side: MaterialStateProperty.all(BorderSide(
                              color: Color.fromRGBO(97, 20, 144, 1.000),
                            ))),
                        onPressed: () {},
                        child: Text(
                          'Alta',
                          style: TextStyle(
                            color: Color.fromRGBO(97, 20, 144, 1.000),
                            fontFamily: 'SFProDisplay',
                            fontSize: 15,
                            height: 20 / 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exigencia',
                      style: TextStyle(
                        color: Color.fromRGBO(139, 48, 194, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 15,
                        height: 20 / 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(55, 16)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            side: MaterialStateProperty.all(BorderSide(
                              color: Color.fromRGBO(139, 48, 194, 1.000),
                            ))),
                        onPressed: () {},
                        child: Text(
                          'Alta',
                          style: TextStyle(
                            color: Color.fromRGBO(139, 48, 194, 1.000),
                            fontFamily: 'SFProDisplay',
                            fontSize: 15,
                            height: 20 / 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Toma Asistencia',
                      style: TextStyle(
                        color: Color.fromRGBO(193, 91, 255, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 15,
                        height: 20 / 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(55, 16)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            side: MaterialStateProperty.all(BorderSide(
                              color: Color.fromRGBO(193, 91, 255, 1.000),
                            ))),
                        onPressed: () {},
                        child: Text(
                          'Alta',
                          style: TextStyle(
                            color: Color.fromRGBO(193, 91, 255, 1.000),
                            fontFamily: 'SFProDisplay',
                            fontSize: 15,
                            height: 20 / 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: CustomFilledButton(
              text: '    VER DETALLE         ',
              textColor: Colors.white,
              verticalPadding: 16,
              linearGradient: LinearGradient(
                colors: [
                  AppTheme.linearGradientLight,
                  AppTheme.linearGradientDark
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0],
              ),
              onPressed: () {
                context.pushNamed(TeacherRaitingStep2Screen.name);
              },
            ),
          )
        ]),
      ),
    );
  }
}

class CarrouselData {
  final String imageAsset;
  final String nombre;
  final String apellido;
  final String curso;

  CarrouselData({
    required this.imageAsset,
    required this.nombre,
    required this.apellido,
    required this.curso,
  });
}

final List<CarrouselData> teacherCarrousel = [
  CarrouselData(
    imageAsset:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrggIP1tphFNHqBURDu-6QY1TiSJVXQy0Uuw&usqp=CAU',
    apellido: 'Pardo Robles',
    nombre: 'Liliana Maria',
    curso: 'Teoría de  Comunicación I',
  ),
  CarrouselData(
    imageAsset:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrggIP1tphFNHqBURDu-6QY1TiSJVXQy0Uuw&usqp=CAU',
    apellido: 'Salinas Reyes',
    nombre: 'Emir André',
    curso: 'Fundamentos de Scrum 1',
  ),
  CarrouselData(
    imageAsset:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrggIP1tphFNHqBURDu-6QY1TiSJVXQy0Uuw&usqp=CAU',
    apellido: 'Lopez Mendes',
    nombre: 'Cesar Enrique',
    curso: 'Fundamentos de Programacion 1',
  ),
  CarrouselData(
    imageAsset:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrggIP1tphFNHqBURDu-6QY1TiSJVXQy0Uuw&usqp=CAU',
    apellido: 'Castillo Rojas',
    nombre: 'Pedro',
    curso: 'Fundamentos de Corrupcion',
  ),
];
