// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/presentation/screens/compare_teacher_%20main_screen.dart';
import 'package:wabu/features/teachers/presentation/screens/teacher_comment.dart';

class TeacherRaitingStep2Screen extends ConsumerWidget {
  const TeacherRaitingStep2Screen({super.key});

  static const String name = "teacher_rating_step2_teacher";
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
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25), bottom: Radius.circular(25))),
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
                          'LLENA LOS DATOS SI LOS RECUERDAS',
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
                        ContinuousQualification(
                          asset: 'clip',
                          text: '¿Deja mucho trabajo?',
                          color: AppTheme.secondary1Color,
                          selectedRating: ['No sé', 'Poco', 'Medio', 'Mucho'],
                          value: (3),
                        ),
                        ContinuousQualification(
                          asset: 'clock',
                          text: '¿Permite llegar tarde?',
                          color: AppTheme.secondary2Color,
                          selectedRating: [
                            'No sé',
                            'Nunca',
                            'A veces',
                            'Siempre'
                          ],
                          value: (2),
                        ),
                        ContinuousQualification(
                          asset: 'pencil',
                          text: '¿Toma de asistencia?',
                          selectedRating: [
                            'No sé',
                            'Nunca',
                            'A veces',
                            'Siempre'
                          ],
                          color: AppTheme.secondary3Color,
                          value: (1),
                        ),
                      ],
                    ),
                     const SizedBox(height: 30),
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
                          stops: const [0.0, 1.0],
                        ),
                        onPressed: () {
                         context.pushNamed(TeacherComment.name);
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

class ContinuousQualification extends StatefulWidget {
  final String asset;
  final String text;
  final Color color;
  final int value;
  final List<String> selectedRating;

  const ContinuousQualification(
      {Key? key,
      required this.asset,
      required this.text,
      required this.color,
      required this.value,
      required this.selectedRating})
      : super(key: key);

  @override
  _ContinuousQualification createState() => _ContinuousQualification();
}

class _ContinuousQualification extends State<ContinuousQualification> {
  late List<bool> isSelected;

   @override
  void initState() {
    super.initState();
    // Inicializa el estado de cada botón como no seleccionado
    isSelected = List.generate(widget.selectedRating.length, (index) => false);
    // Establece el estado inicial basado en el valor proporcionado
    isSelected[widget.value] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        child: Column(
          children: [
            Row(
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
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            LayoutBuilder(builder: ((context, constraints) {
              final width = constraints.maxWidth;

           return SizedBox(
              height: 24,
              width: width * 0.99,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (int i = 0; i < widget.selectedRating.length; i++)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          // Actualiza el estado al seleccionar un botón específico
                          for (int j = 0; j < isSelected.length; j++) {
                            isSelected[j] = (j == i);
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          // Cambia el color de fondo basado en el estado del botón
                          isSelected[i]
                              ? widget.color
                              : Color.fromRGBO(245, 245, 246, 1.000),
                        ),
                      ),
                      child: Text(
                        widget.selectedRating[i],
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Inter',
                          color: isSelected[i] ? Colors.white : Colors.black,
                        ),
                      ),
                    )
                ],
                ),
              );
            }))
          ],
        ));
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
