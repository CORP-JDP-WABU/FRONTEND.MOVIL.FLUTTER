import 'package:flutter/material.dart';

class SolidCircleAvatar extends StatelessWidget {
  const SolidCircleAvatar({
    super.key,
    required this.radius,
    required this.borderWidth,
    required this.borderColor,
    required this.imageProvider,
  });

  final double radius;
  final double borderWidth;
  final Color borderColor;
  final ImageProvider<Object>? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(
        side: BorderSide(
          color: borderColor,
          width: borderWidth,
        ),
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: imageProvider,
      ),
    );
  }
}
