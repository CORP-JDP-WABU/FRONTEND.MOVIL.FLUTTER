import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconFilter extends StatelessWidget {
  const IconFilter({
    super.key,
    required this.activeColor,
    required this.assetName,
    required this.label,
    this.isEnabled = true,
    this.isSelected = false,
    this.onPressed,
  });

  final Color activeColor;
  final bool isEnabled;
  final bool isSelected;
  final String assetName;
  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          ElevatedButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(CircleBorder()),
              elevation: MaterialStatePropertyAll(5),
              backgroundColor: MaterialStatePropertyAll(Colors.white),
              minimumSize: MaterialStatePropertyAll(Size(56, 56)),
            ),
            onPressed: isEnabled ? onPressed : null,
            child: SvgPicture.asset(
              'assets/images/svgs/$assetName.svg',
              fit: BoxFit.contain,
              colorFilter: ColorFilter.mode(
                isSelected ? activeColor : const Color(0xFF9D9D9D),
                BlendMode.srcIn,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 8,
                color: isSelected ? activeColor : const Color(0xFF696969),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
