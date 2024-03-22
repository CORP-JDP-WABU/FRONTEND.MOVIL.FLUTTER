import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UnhappyPath extends StatelessWidget {
  const UnhappyPath({
    super.key,
    required this.title,
    this.subtitle,
  });

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/images/svgs/emoji_sad_missing.svg',
        ),
        const SizedBox(height: 24),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0XFFBFBFBF),
            fontFamily: 'GothamRounded',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 16),
          Text(
            subtitle!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0XFFBFBFBF),
              fontFamily: 'GothamRounded',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ],
    );
  }
}
