import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconFilter extends StatefulWidget {
  const IconFilter({
    super.key,
    this.isEnabled = false,
    required this.assetName,
    required this.label,
  });

  final bool isEnabled;
  final String assetName;
  final String label;

  @override
  State<IconFilter> createState() => _IconFilterState();
}

class _IconFilterState extends State<IconFilter> {
  bool isActive = false;

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
            onPressed: widget.isEnabled
                ? () {
                    setState(() {
                      isActive = !isActive;
                    });
                  }
                : null,
            child: SvgPicture.asset(
              'assets/images/svgs/${widget.assetName}.svg',
              fit: BoxFit.contain,
              colorFilter: !isActive
                  ? const ColorFilter.mode(
                      Color(0xFF9D9D9D),
                      BlendMode.srcIn,
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              widget.label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 8,
                color: Color(0xFF696969),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
