import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/utils/utils.dart';

class SearchDashboardItem extends StatelessWidget {
  const SearchDashboardItem({
    super.key,
    required this.linearGradient,
    required this.label,
    required this.iconAssetPath,
    required this.value,
  });

  final Gradient linearGradient;
  final String label;
  final String iconAssetPath;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 4,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            gradient: linearGradient,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      label,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SvgPicture.asset(iconAssetPath),
                ],
              ),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  HumanFormats.humanReadableNumber(value),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
