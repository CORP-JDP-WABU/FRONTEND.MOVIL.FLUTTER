import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:countup/countup.dart';

class HomeDashboardItem extends StatelessWidget {
  const HomeDashboardItem({
    super.key,
    required this.iconAsset,
    required this.lottieAsset,
    required this.color,
    required this.value,
    required this.text,
  });

  final String iconAsset;
  final String lottieAsset;
  final Color color;
  final int value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, contraints) {
          final maxHeight = contraints.maxHeight;
          final maxWidth = contraints.maxWidth;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: maxWidth * 0.1),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                _DashboardItemLabel(
                  maxHeight: maxHeight,
                  text: text,
                  color: color,
                ),
                _DashboardItemIndicator(
                  maxHeight: maxHeight,
                  iconAsset: iconAsset,
                  lottieAsset: lottieAsset,
                  value: value,
                  color: color,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class _DashboardItemLabel extends StatelessWidget {
  const _DashboardItemLabel({
    required this.maxHeight,
    required this.text,
    required this.color,
  });

  final double maxHeight;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(width: 48),
        Expanded(
          child: Material(
            borderRadius: BorderRadius.circular(25),
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.only(left: 52),
              height: min(maxHeight * 0.65, 80),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DashboardItemIndicator extends StatelessWidget {
  const _DashboardItemIndicator({
    required this.maxHeight,
    required this.iconAsset,
    required this.lottieAsset,
    required this.value,
    required this.color,
  });

  final double maxHeight;
  final String iconAsset;
  final String lottieAsset;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final radius = min(maxHeight * 0.4, 49).toDouble();

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: min(maxHeight * 0.8, 98),
          width: min(maxHeight * 0.8, 98),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(iconAsset),
          ),
        ),
        CircularPercentIndicator(
          radius: radius,
          lineWidth: 7,
          startAngle: 315,
          backgroundColor: Colors.transparent,
          progressColor: color,
          percent: 1,
          circularStrokeCap: CircularStrokeCap.round,
        ),
        Countup(
          begin: 0,
          end: value.toDouble(),
          duration: const Duration(seconds: 3),
          separator: ',',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        )
      ],
    );
  }
}
