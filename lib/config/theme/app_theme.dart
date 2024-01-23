import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryText = Color(0xFF041440);
  static const Color skyblue = Color(0xFF3DC9E8);
  static const Color bodyTextColor = Color(0xFF9E9E9E);
  static const Color inputBackgroundColor = Color(0xFFF2F2F7);
  static const Color boldSkyBlue = Color(0xFF26ADCB);
  static const Color secondaryBodyTextColor = Color(0xFF8D8D8D);
  static const Color linearGradientDark = Color(0xFF1351FF);
  static const Color linearGradientLight = Color(0xFF3BC3EA);
  static const Color alertDialogButtonColor = Color(0xFF4986CC);
  static const Color alertDialogContentColor = Color(0xFF6D7885);

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        fontFamily: 'SFProDisplay',
      );
}
