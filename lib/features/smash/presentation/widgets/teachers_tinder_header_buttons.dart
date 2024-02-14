import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';

class TeachersTinderHeaderButtons extends StatelessWidget {
  const TeachersTinderHeaderButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBackButton(
          color: Colors.white,
          onTap: () => context.pop(),
        ),
      ],
    );
  }
}
