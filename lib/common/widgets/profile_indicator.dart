import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileIndicator extends StatelessWidget {
  const ProfileIndicator({
    super.key,
    required this.color,
    required this.iconSize,
    required this.textSize,
  });

  final Color color;
  final double iconSize;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '3.00',
          style: TextStyle(
            color: color,
            fontSize: textSize,
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
