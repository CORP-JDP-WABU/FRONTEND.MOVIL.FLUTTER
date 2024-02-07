import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/smash/presentation/screens/teacher_rating_step2.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CompareTeachersScreen extends ConsumerWidget {
  const CompareTeachersScreen({super.key});

  static const String name = "compare_teachers";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Color.fromRGBO(130, 55, 243, 1.000),
              Color.fromRGBO(226, 83, 166, 1.000),
              Color.fromRGBO(251, 225, 155, 1.000),
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
              const SizedBox(height: 16),
              Material(
                shape: const CircleBorder(
                    side: BorderSide(color: Colors.white, width: 3)),
                child: CircleAvatar(
                  radius: 72,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrggIP1tphFNHqBURDu-6QY1TiSJVXQy0Uuw&usqp=CAU',
                      scale: 144),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25),
                          bottom: Radius.circular(25))),
                  child: Column(children: [
                    const SizedBox(height: 16),
                    SizedBox(height: 10),
                    Text(
                      'Pardo Robles',
                      style: TextStyle(
                        color: Color.fromRGBO(2, 51, 106, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 20,
                        height: 31 / 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Liliana Maria',
                      style: TextStyle(
                        color: Color.fromRGBO(2, 51, 106, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 20,
                        height: 31 / 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'Comunicacion I',
                        style: TextStyle(
                          color: Color.fromRGBO(2, 51, 106, 1.000),
                          fontFamily: 'SFProDisplay',
                          fontSize: 17,
                          height: 31 / 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
                      children: const [
                        Text(
                          'CALIFICA A TU PROFESOR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              height: 48 / 18,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.courseNameColor),
                        ),
                        SizedBox(height: 8),
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
                    /*   RatingBar.builder(
                                  initialRating:1,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  unratedColor:
                                      AppTheme.progressBarBackgroundColor,
                                  itemCount: 5,
                                  itemSize: 40.0,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Container(
                                      decoration: BoxDecoration(
                                        color: AppTheme.secondaryStatsColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 38,
                                      width: 50),
                                  onRatingUpdate: (rating) {
                                    print('Rating updated: $rating');
                                   
                                  },
                                  updateOnDrag: true,
                                ),*/
                    const SizedBox(height: 60),
                    Center(
                      child: CustomFilledButton(
                        text: 'CONTINUAR',
                        textColor: Colors.white,
                        verticalPadding: 8,
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
              ),
            ],
          ),
        ),
      )),
    );
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
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
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
                )
                //Elige cual de las formas va mejor con el requerimiento
                /* RatingBar(
                 initialRating: _rating,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: 5,
          ratingWidget: RatingWidget(
            full:  Container(
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 20,
                      width: 127),
            half: Container(
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: 20),
            empty:  Container(
                      decoration: BoxDecoration(
                        color: AppTheme.progressBarBackgroundColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 20,
                      width: 127),
          ),
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
          updateOnDrag: true,
                )*/
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BezzierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.2;
    Path path = Path();
    path.lineTo(0, height - heightOffset);
    path.quadraticBezierTo(
        width * 0.5, height * 1.2, width, height - heightOffset);
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
