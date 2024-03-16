import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/compare/presentation/presentation.dart';

class CompareWelcomerBanner extends StatelessWidget {
  const CompareWelcomerBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: const Stack(
            children: [
              _BlurredImage(),
              _TransparentGradientCover(),
            ],
          ),
        ),
        CustomFilledButton(
          text: 'COMENZAR',
          textColor: Colors.white,
          fontSize: 16,
          linearGradient: primaryButtonLinearGradient,
          minimumWidth: 214,
          verticalPadding: 12,
          onPressed: () => context.pushNamed(CompareSearchScreen.name),
        )
      ],
    );
  }
}

class _BlurredImage extends StatelessWidget {
  const _BlurredImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/pngs/compare_banner.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2.72,
          sigmaY: 2.72,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}

class _TransparentGradientCover extends StatelessWidget {
  const _TransparentGradientCover();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0x8CFFFFFF),
            Color(0x8B5600FF),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
