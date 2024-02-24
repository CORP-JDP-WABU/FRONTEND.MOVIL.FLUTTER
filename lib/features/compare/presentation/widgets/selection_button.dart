import 'package:flutter/material.dart';

class SelectionButton extends StatefulWidget {
  const SelectionButton({super.key});

  @override
  State<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends State<SelectionButton> {
  bool isSelected = false;

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
        setState(() {
          isSelected = !isSelected;
        });
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
