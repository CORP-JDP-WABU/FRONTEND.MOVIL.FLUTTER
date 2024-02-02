import 'package:flutter/material.dart';
import 'package:wabu/config/theme/app_theme.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.color = AppTheme.skyblue});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.arrow_back_ios_new, color: color),
        const SizedBox(width: 5),
        Text(
          'Atrás',
          style: TextStyle(
            color: color,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 24 / 20,
          ),
        )
      ],
    );
  }
}
