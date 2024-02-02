import 'package:flutter/material.dart';

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.2;

    Path path = Path();

    path.lineTo(0, height - heightOffset);
    path.quadraticBezierTo(
      width * 0.5,
      height * 1.2,
      width,
      height - heightOffset,
    );
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
