import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';

class TeachersTinderButtons extends StatelessWidget {
  const TeachersTinderButtons({
    super.key,
    required this.controller,
  });

  final CardSwiperController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: ElevatedCircleButton(
              backgroundColor: Colors.white,
              padding: 12,
              onPressed: () {
                controller.swipe(CardSwiperDirection.left);
              },
              child: SvgPicture.asset('assets/images/svgs/close.svg'),
            ),
          ),
        ),
        Expanded(
          child: ElevatedCircleButton(
            backgroundColor: AppTheme.smashTeacherBackgroundButton,
            padding: 12,
            onPressed: () {
              controller.swipe(CardSwiperDirection.right);
            },
            child: SvgPicture.asset('assets/images/svgs/smash_button.svg'),
          ),
        ),
        Expanded(child: Container()),
      ],
    );
  }
}
