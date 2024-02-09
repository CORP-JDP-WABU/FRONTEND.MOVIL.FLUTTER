import 'package:flutter/material.dart';
import 'package:wabu/features/smash/presentation/widgets/widgets.dart';

class TeachersTinderWrapper extends StatelessWidget {
  const TeachersTinderWrapper({
    super.key,
    required this.content,
  });

  final Widget content;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TeachersTinderHeaderButtons(),
            const SizedBox(height: 16),
            Expanded(child: content),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
