import 'package:flutter/material.dart';

class SwipeDetector extends StatelessWidget {
  final Widget child;
  final Function()? onSwipeLeft;
  final Function()? onSwipeRight;

  SwipeDetector({
    required this.child,
    this.onSwipeLeft,
    this.onSwipeRight,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          // Deslizar hacia la derecha
          onSwipeRight?.call();
        } else if (details.primaryVelocity! < 0) {
          // Deslizar hacia la izquierda
          onSwipeLeft?.call();
        }
      },
      child: child,
    );
  }
}
