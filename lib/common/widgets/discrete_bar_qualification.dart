import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/bar_qualification.dart';
import 'package:wabu/config/theme/app_theme.dart';

class DiscreteBarQualification extends StatelessWidget {
  const DiscreteBarQualification({
    super.key,
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
    required this.count,
  });

  final String asset;
  final String text;
  final Color color;
  final double value;
  final int count;

  double calculateIntervalValue(int idx) {
    double maxSegmentPercentage = 1.0 / count;

    if (value == 0 || value < maxSegmentPercentage * idx) {
      return 0;
    }

    if (value >= maxSegmentPercentage * (idx + 1)) {
      return 1;
    }

    return (value % (maxSegmentPercentage * idx)) / maxSegmentPercentage;
  }

  @override
  Widget build(BuildContext context) {
    return BarQualification(
      asset: asset,
      text: text,
      color: color,
      value: value,
      child: Row(
        children: [
          for (int idx = 0; idx < count; idx++)
            _IntervalBar(
              color: color,
              value: calculateIntervalValue(idx),
            ),
        ],
      ),
    );
  }
}

class _IntervalBar extends StatelessWidget {
  const _IntervalBar({
    required this.color,
    required this.value,
  });

  final Color color;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;

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
                    color: color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 8,
                  width: width * value,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
