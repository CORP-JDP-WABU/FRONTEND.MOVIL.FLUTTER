import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/bar_qualification.dart';

class OptionalQualificationTag extends StatelessWidget {
  const OptionalQualificationTag({
    super.key,
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
    required this.selectedRating,
  });

  final String asset;
  final String text;
  final Color color;
  final double value;
  final List<String> selectedRating;
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
            color: color,
            selectedRating: selectedRating,
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
    required this.color,
    required this.selectedRating,
  });

  final double width;
  final double value;
  final Color color;
  final List<String> selectedRating;

  @override
  Widget build(BuildContext context) {
    int index = value.floor();
    return SizedBox(
      height: 24,
      width: width * 0.99,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(62, 24)),
              backgroundColor: MaterialStateProperty.all(color),
            ),
            child: Text(
              selectedRating[index],
              maxLines: 1,
              style: const TextStyle(
                fontSize: 9,
                fontFamily: 'Inter',
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
