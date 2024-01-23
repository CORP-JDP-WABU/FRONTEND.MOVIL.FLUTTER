import 'package:flutter/material.dart';
import 'package:wabu/config/theme/app_theme.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.arrow_back_ios_new, color: AppTheme.skyblue),
        SizedBox(width: 5),
        Text(
          'Atrás',
          style: TextStyle(
            color: AppTheme.skyblue,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 24 / 20,
          ),
        )
      ],
    );
  }
}
