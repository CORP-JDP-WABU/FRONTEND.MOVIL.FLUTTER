import 'package:flutter/material.dart';
import 'package:wabu/common/widgets/widgets.dart';

class CarrouselFilterButtons extends StatefulWidget {
  const CarrouselFilterButtons({
    super.key,
    this.isEnabled = true,
    this.onQualificationPressed,
    this.onLearnPressed,
    this.onHighPressed,
    this.onGoodPressed,
  });

  final bool isEnabled;
  final VoidCallback? onQualificationPressed;
  final VoidCallback? onLearnPressed;
  final VoidCallback? onHighPressed;
  final VoidCallback? onGoodPressed;

  @override
  State<CarrouselFilterButtons> createState() => CarrouselFilterButtonsState();
}

class CarrouselFilterButtonsState extends State<CarrouselFilterButtons> {
  int activeIndex = -1;

  void onFilterPressed({required int index, required VoidCallback? onPressed}) {
    if (onPressed != null) {
      setState(() => activeIndex = index);
      onPressed.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IconFilter(
            activeColor: const Color(0xFFFFC32A),
            assetName: 'star',
            isEnabled: widget.isEnabled,
            isSelected: activeIndex == 0,
            label: 'MEJOR CALIFICACIÓN',
            onPressed: () =>
                onFilterPressed(index: 0, onPressed: widget.onLearnPressed),
          ),
        ),
        Expanded(
          child: IconFilter(
            activeColor: const Color(0xFF4EA2FF),
            assetName: 'brain',
            isEnabled: widget.isEnabled,
            isSelected: activeIndex == 1,
            label: '¿QUÉ TANTO APRENDISTE?',
            onPressed: () =>
                onFilterPressed(index: 1, onPressed: widget.onLearnPressed),
          ),
        ),
        Expanded(
          child: IconFilter(
            activeColor: const Color(0xFF48C2E6),
            assetName: 'parchment',
            isEnabled: widget.isEnabled,
            isSelected: activeIndex == 2,
            label: '¿QUÉ TAN ALTO CALIFICA?',
            onPressed: () =>
                onFilterPressed(index: 2, onPressed: widget.onHighPressed),
          ),
        ),
        Expanded(
          child: IconFilter(
            activeColor: const Color(0xFF44D9D3),
            assetName: 'heart',
            isEnabled: widget.isEnabled,
            isSelected: activeIndex == 3,
            label: '¿QUÉ TAN BUENA GENTE ES?',
            onPressed: () =>
                onFilterPressed(index: 3, onPressed: widget.onGoodPressed),
          ),
        ),
      ],
    );
  }
}
