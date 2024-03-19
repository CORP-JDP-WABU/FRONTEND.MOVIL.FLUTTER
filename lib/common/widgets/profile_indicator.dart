import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileIndicator extends StatelessWidget {
  const ProfileIndicator({
    super.key,
    required this.color,
    required this.iconSize,
    required this.textSize,
    this.fontWeight
  });

  final Color color;
  final double iconSize;
  final double textSize;
  final FontWeight ? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '3.00',
          style: TextStyle(
            color: color,
            fontSize: textSize,
            fontFamily: 'SFProDisplay',
            fontWeight: fontWeight
          ),
        ),
        const SizedBox(width: 4),
        SvgPicture.asset(
          'assets/images/svgs/star.svg',
          height: iconSize,
          width: iconSize,
          colorFilter: ColorFilter.mode(
            color,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}
