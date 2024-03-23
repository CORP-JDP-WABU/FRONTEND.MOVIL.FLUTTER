import 'package:flutter/material.dart';

class CardViewCarrouselOptionalCompare extends StatelessWidget {
  const CardViewCarrouselOptionalCompare({
    super.key,
    required this.text,
    required this.getOptionalQualificationValueByCode,
    required this.color,
  });

  final String text;
  final String getOptionalQualificationValueByCode;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: color,
            fontFamily: 'SFProDisplay',
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
            height: 16,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
                border: const Border.fromBorderSide(BorderSide(
                  color: Color.fromRGBO(139, 48, 194, 1.000),
                ))),
            child: Text(
              getOptionalQualificationValueByCode,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: color,
                fontFamily: 'SFProDisplay',
                fontSize: 12,
                height: 16 / 15,
                fontWeight: FontWeight.w400,
              ),
            ))
      ],
    );
  }
}
