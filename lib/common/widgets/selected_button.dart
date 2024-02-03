import 'package:flutter/material.dart';

class SelectedButton extends StatefulWidget {
  const SelectedButton({
    super.key,
    required this.isSelected,
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.size,
    required this.color,
    this.onTap,
  });

  final bool isSelected;
  final IconData selectedIcon;
  final IconData unselectedIcon;
  final double size;
  final Color color;
  final Function()? onTap;

  @override
  State<SelectedButton> createState() => _SelectedButtonState();
}

class _SelectedButtonState extends State<SelectedButton> {
  late bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Icon(
          isSelected ? widget.selectedIcon : widget.unselectedIcon,
          size: widget.size,
          color: widget.color,
        ),
      ),
    );
  }
}