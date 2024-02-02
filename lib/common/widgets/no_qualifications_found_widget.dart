import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/config/theme/app_theme.dart';

class NoQualificationsFoundWidget extends StatelessWidget {
  const NoQualificationsFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/svgs/emoji-sad.svg'),
          const SizedBox(height: 16),
          const Text(
            'Este profesor todavía no tiene calificaciones',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppTheme.noQualificationsTextColor,
              fontFamily: 'GothamRounded',
            ),
          ),
        ],
      ),
    );
  }
}
