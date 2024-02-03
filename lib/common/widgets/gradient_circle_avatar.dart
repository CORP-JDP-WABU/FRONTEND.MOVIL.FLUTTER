import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/gradients/button_linear_gradient.dart';

class GradientCircleAvatar extends StatelessWidget {
  const GradientCircleAvatar({
    super.key,
    required this.radius,
    required this.borderWidth,
    required this.imageProvider,
  });

  final double radius;
  final double borderWidth;
  final ImageProvider<Object>? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: primaryButtonLinearGradient,
        borderRadius: BorderRadius.circular(radius + borderWidth),
        border: Border.all(
          width: borderWidth,
          style: BorderStyle.none,
        ),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: imageProvider,
      ),
    );
  }
}