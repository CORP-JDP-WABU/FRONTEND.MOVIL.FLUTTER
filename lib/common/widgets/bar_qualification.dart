import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarQualification extends StatelessWidget {
  const BarQualification({
    super.key,
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
    required this.child,
  });

  final String asset;
  final String text;
  final Color color;
  final double value;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/svgs/$asset.svg'),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
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
                const SizedBox(height: 8),
                child
              ],
            ),
          ),
        ],
      ),
    );
  }
}
