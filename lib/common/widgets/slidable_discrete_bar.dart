import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/config/theme/app_theme.dart';

class SlidableDiscreteBar extends StatelessWidget {
  const SlidableDiscreteBar({
    super.key,
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
    required this.count,
    required this.onRatingUpdate,
  });

  final String asset;
  final String text;
  final Color color;
  final double value;
  final int count;
  final Function(double) onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/svgs/$asset.svg'),
          const SizedBox(width: 16),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                const itemCount = 5;
                const itemPadding = 4.0;
                final maxWidth = constraints.maxWidth;
                final itemMaxWidth =
                    (maxWidth - itemCount * itemPadding) / itemCount;

                return Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        text,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: color,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    RatingBar.builder(
                      glow: false,
                      initialRating: value,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      unratedColor: AppTheme.progressBarBackgroundColor,
                      itemCount: itemCount,
                      itemSize: itemMaxWidth - 5,
                      itemPadding:
                          const EdgeInsets.symmetric(horizontal: itemPadding),
                      itemBuilder: (context, _) => Container(
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 20,
                        width: itemMaxWidth,
                      ),
                      onRatingUpdate: onRatingUpdate,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
