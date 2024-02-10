import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/smash/presentation/widgets/widgets.dart';

class TeachersTinderWrapper extends StatelessWidget {
  const TeachersTinderWrapper({
    super.key,
    required this.isLoading,
    required this.content,
  });

  final bool isLoading;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(gradient: tinderLinearGradient),
          ),
          SafeArea(
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
          ),
          if (isLoading) const LoaderTransparent()
        ],
      ),
    );
  }
}
