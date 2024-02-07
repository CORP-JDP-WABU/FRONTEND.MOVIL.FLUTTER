import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/features/teachers/data/datasources/card_data.dart';

class CardView extends StatelessWidget {
  final CardData candidate;

  const CardView(
    this.candidate, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        //'assets/images/svgs/person.svg',
                         candidate.imageAsset,
                        width: 308,
                        height: 333,
                      ),
                      SizedBox(height: 10),
                      Text(
                        // 'Pardo Robles',
                        candidate.apellido,
                        style: TextStyle(
                          color: Color.fromRGBO(2, 51, 106, 1.000),
                          fontFamily: 'SFProDisplay',
                          fontSize: 20,
                          height: 31 / 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        //'Liliana Maria',
                         candidate.nombre,
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
                          candidate.curso,
                          style: TextStyle(
                            color: Color.fromRGBO(2, 51, 106, 1.000),
                            fontFamily: 'SFProDisplay',
                            fontSize: 17,
                            height: 31 / 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
          ),

        
        ],
      ),
    );
  }
}
