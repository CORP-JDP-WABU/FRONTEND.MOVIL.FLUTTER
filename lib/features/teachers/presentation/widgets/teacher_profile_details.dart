import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/common/widgets/gradients/button_linear_gradient.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class TeacherProfileDetails extends StatelessWidget {
  const TeacherProfileDetails({
    super.key,
    required this.teacher,
  });

  final Teacher? teacher;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 24,
      ),
      child: Column(
        children: [
          Text(
            teacher?.information ??
                'Est eu laborum dolore irure dolor commodo incididunt id irure dolore laborum consequat sint anim. Minim non sit aliqua in aliquip esse amet magna laborum voluptate elit proident officia. Dolore sint nulla duis voluptate ut mollit ea sint non. Sint aliquip est mollit consectetur veniam aliqua mollit ea sit quis.',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              height: 14 / 12,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            teacher?.email ?? 'no - email',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              height: 14 / 12,
            ),
          ),
          const CustomFilledButton(
            text: 'Sugerir editar',
            textColor: Colors.white,
            verticalPadding: 8,
            linearGradient: primaryButtonLinearGradient,
          ),
        ],
      ),
    );
  }
}
