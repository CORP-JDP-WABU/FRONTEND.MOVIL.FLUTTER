// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/presentation/screens/compare_teacher_%20main_screen.dart';

class TeacherComment extends ConsumerWidget {
  const TeacherComment({super.key});

  static const String name = "teacher_comment";
  static const String route = "/$name";
  static final TextEditingController _commentController =
      TextEditingController();
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
                          'INGRESA UN COMENTARIO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              height: 48 / 18,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.courseNameColor),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                              child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: TextField(
                              controller: _commentController,
                              decoration: InputDecoration(
                                hintText: 'Deja tu comentario aquí',
                              ),
                              maxLines: 7,
                              maxLength: 280,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                            ),
                          )),
                          SizedBox(height: 6.0),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: CustomFilledButton(
                        text: 'PUBLICAR',
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
                          if (_commentController.text.length >= 20) {
                            showConfirmationDialog(context);
                          } else {}
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

  void showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/check.gif',
              ),
              SizedBox(height: 10),
              Text(
                'Tu calificación ha sido confirmada',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.bodyTextColor,
                  fontFamily: 'SFProDisplay',
                  fontSize: 17,
                  height: 20 / 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
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
