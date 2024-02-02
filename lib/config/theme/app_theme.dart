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
  static const Color scrollbarColor = Color(0xFF2A94F3);
  static const Color termsColor = Color(0xFF2D9AF2);
  static const Color termsLabelColor = Color(0xFF6B6A6A);
  static const Color student = Color(0xFF646464);
  static const Color linearGradientWelcomeDark = Color(0xFFE1F8FF);
  static const Color linearGradientWelcomeLight = Color(0xFFFFFFFF);
  static const Color linearGradientTeachersDark = Color(0xFF1B66FC);
  static const Color linearGradientTeachersLight = Color(0xFF32C5FF);
  static const Color linearGradientSmashPrimary = Color(0xFFFBE19B);
  static const Color linearGradientSmashSecondary = Color(0xFFE253A6);
  static const Color linearGradientSmashTertiary = Color(0xFF8237F3);
  static const Color headerBackgroundColor = Color(0xFF29B8FD);
  static const Color greenIconsColor = Color(0xFF2BD47F);
  static const Color checkboxColor = Color(0xFF374FC7);

  static const Color courseNameColor = Color(0xFF02336A);
  static const Color starColor = Color(0xFFFFC32A);
  static const Color primaryStatsColor = Color(0xFF4EA2FF);
  static const Color secondaryStatsColor = Color(0xFF48C2E6);
  static const Color tertiaryStatsColor = Color(0xFF44D9D3);
  static const Color commentsColor = Color(0xFF1760B0);
  static const Color statsColor = Color(0xFF8812D1);

  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        fontFamily: 'SFProDisplay',
      );
}
