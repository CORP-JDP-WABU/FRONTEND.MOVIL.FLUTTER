import 'package:flutter/material.dart';
import 'package:wabu/config/theme/app_theme.dart';

const primaryButtonLinearGradient = LinearGradient(
  colors: [
    AppTheme.linearGradientLight,
    AppTheme.linearGradientDark,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.0, 1.0],
);
