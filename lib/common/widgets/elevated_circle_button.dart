import 'package:flutter/material.dart';

class ElevatedCircleButton extends StatelessWidget {
  const ElevatedCircleButton({
    super.key,
    required this.backgroundColor,
    required this.padding,
    this.onPressed,
    required this.child,
  });

  final Color backgroundColor;
  final double padding;
  final Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: const CircleBorder(),
        elevation: 5,
        padding: EdgeInsets.all(padding),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
