import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/compare/presentation/presentation.dart';

class CompareWelcomeScreen extends StatelessWidget {
  const CompareWelcomeScreen({super.key});

  static const String name = 'compare_welcome';
  static const String route = '/$name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: tinderLinearGradient,
            ),
          ),
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: _CompareWelcomeContent(),
            ),
          )
        ],
      ),
    );
  }
}

class _CompareWelcomeContent extends StatelessWidget {
  const _CompareWelcomeContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        CustomBackButton(
          color: Colors.white,
          onTap: () => context.pop(),
        ),
        const SizedBox(height: 20),
        const Text(
          '¡COMPARA A TODOS LOS PROFESORES QUE QUIERAS!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'GothamRounded',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 20),
        const Expanded(child: CompareWelcomerBanner()),
        const SizedBox(height: 20),
        const _FilterButtons(),
        const SizedBox(height: 24),
      ],
    );
  }
}

class _FilterButtons extends StatelessWidget {
  const _FilterButtons();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: IconFilter(
            assetName: 'star',
            label: 'MEJOR CALIFICACIÓN',
          ),
        ),
        Expanded(
          child: IconFilter(
            assetName: 'brain',
            label: '¿QUÉ TANTO APRENDISTE?',
          ),
        ),
        Expanded(
          child: IconFilter(
            assetName: 'parchment',
            label: '¿QUÉ TAN ALTO CALIFICA?',
          ),
        ),
        Expanded(
          child: IconFilter(
            assetName: 'heart',
            label: '¿QUÉ TAN BUENA GENTE ES?',
          ),
        ),
      ],
    );
  }
}
