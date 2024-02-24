import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeacherRequiredQualificationIndicator extends StatelessWidget {
  const TeacherRequiredQualificationIndicator({
    super.key,
    required this.value,
    required this.assetName,
    required this.color,
  });

  final String value;
  final String assetName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          value,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 2),
        SvgPicture.asset(
          'assets/images/svgs/$assetName.svg',
          width: 16,
          height: 16,
          colorFilter: ColorFilter.mode(
            color,
            BlendMode.srcIn,
          ),
        ),
      ],
    );
  }
}
