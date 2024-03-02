import 'package:flutter/material.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton({
    super.key,
    required this.onSelect,
    required this.onUnselect,
    required this.isSelected,
  });

  final void Function() onSelect;
  final void Function() onUnselect;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? const Color(0xFF4EA2FF) : Colors.white,
        shape: const CircleBorder(),
        elevation: 5,
        padding: EdgeInsets.zero,
      ),
      onPressed: () {
        if (isSelected) {
          onUnselect();
        } else {
          onSelect();
        }
      },
      child: isSelected
          ? const Icon(
              Icons.check_rounded,
              color: Colors.white,
            )
          : const Icon(
              Icons.add_rounded,
              color: Color(0xFF4EA2FF),
            ),
    );
  }
}
