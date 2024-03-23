import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/common/widgets/gradients/button_linear_gradient.dart';

class CourseDetailsCard extends StatelessWidget {
  const CourseDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34),
          gradient: primaryButtonLinearGradient,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Teoría de la Comunicación",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'GothamRounded',
                  height: 24 / 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _CourseDetailItem(
                        asset: 'assets/images/svgs/star.svg',
                        text: 'Calificacion',
                        color: Colors.white,
                        value: 4.2),
                    SizedBox(width: 8),
                    _CourseDetailItem(
                        asset: 'assets/images/svgs/message.sv',
                        text: 'Comentarios',
                        color: Colors.white,
                        value: 214),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CourseDetailItem extends StatelessWidget {
  const _CourseDetailItem({
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
  });

  final String asset;
  final String text;
  final Color color;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(value.toString(),
                style: TextStyle(
                  color: color,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(width: 4),
            SvgPicture.asset(asset,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                )),
          ],
        ),
        Text(text,
            style: TextStyle(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )),
      ],
    );
  }
}
