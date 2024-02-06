// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/features/teachers/presentation/screens/compare_teacher_%20main_screen.dart';
import 'package:wabu/features/teachers/presentation/screens/tinder_view_rating_teacher.dart';

class SmashTabMainScreen extends ConsumerWidget {
  const SmashTabMainScreen({super.key});

  static const String name = "smash_tab_main_screen";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        // backgroundColor: AppTheme.greyBackgroundColor,
        body: Center(
            child: Column(children: [
      InkWell(
        child: Card(
         
          child: Container(
              height: size.height * 0.44,
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
              color: Color.fromRGBO(70, 227, 255, 1.000),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/svgs/Group 7.svg',
                    width: 150,
                    height: 150,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'SMASH',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GothamRounded',
                        fontSize: 23,
                        height: 31 / 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              )),
        ),
        onTap: () {
          context.pushNamed(TinderViewRatingTeacher.name);
        },
      ),
      InkWell(
        child: Card(
        
          child: Container(
              height: size.height * 0.44,
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
              color: Color.fromRGBO(220, 128, 255, 1.000),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/svgs/Group 6.svg',
                    width: 150,
                    height: 150,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'COMPARAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GothamRounded',
                        fontSize: 23,
                        height: 31 / 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              )),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => CompareTeacherMainScreen(),
            ),
          );
        },
      ),
    ])));
  }
}
