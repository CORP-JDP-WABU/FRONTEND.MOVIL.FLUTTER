import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileIndicator extends StatelessWidget {
  const ProfileIndicator({
    super.key,
    required this.color,
    required this.text,
    required this.asset,
  });

  final Color color;
  final String text;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 12,
            fontFamily: 'SFProDisplay',
            fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(width: 4),
        SvgPicture.asset(
          asset,
          height: 12,
          width: 12,
          colorFilter: ColorFilter.mode(
            color,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}
