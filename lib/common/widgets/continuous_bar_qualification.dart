import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/bar_qualification.dart';
import 'package:wabu/config/theme/app_theme.dart';

class ContinuousBarQualification extends StatelessWidget {
  const ContinuousBarQualification({
    super.key,
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
  });

  final String asset;
  final String text;
  final Color color;
  final double value;

  @override
  Widget build(BuildContext context) {
    return BarQualification(
      asset: asset,
      text: text,
      color: color,
      value: value,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          return _ContinuousBar(
            width: width,
            value: value,
          );
        },
      ),
    );
  }
}

class _ContinuousBar extends StatelessWidget {
  const _ContinuousBar({
    required this.width,
    required this.value,
  });

  final double width;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppTheme.progressBarBackgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [
                AppTheme.linearGradientProgressBarLight,
                AppTheme.linearGradientProgressBarDark,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.0, 0.78],
            ),
          ),
          height: 8,
          width: width * value,
        ),
      ],
    );
  }
}
