import 'package:flutter/material.dart';
import 'package:wabu/config/theme/app_theme.dart';

const tinderLinearGradient = LinearGradient(
  colors: [
    AppTheme.primarySmashBackgroundColor,
    AppTheme.secondarySmashBackgroundColor,
    AppTheme.tertiarySmashBackgroundColor,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
