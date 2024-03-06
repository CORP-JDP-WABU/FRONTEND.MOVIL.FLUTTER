import 'package:flutter/material.dart';
import 'package:wabu/config/theme/app_theme.dart';

class UpdateInfoDropdown extends StatelessWidget {
  const UpdateInfoDropdown({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.value,
    required this.onChanged,
    required this.items,
  });

  final String labelText;
  final String hintText;
  final String? value;
  final void Function(String?)? onChanged;
  final List<DropdownMenuItem<String>>? items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: AppTheme.primaryText,
            fontSize: 22,
            fontWeight: FontWeight.w700,
            height: 48 / 22,
          ),
        ),
        Material(
          elevation: 12,
          borderRadius: BorderRadius.circular(12),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, style: BorderStyle.none),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DropdownButton(
                isExpanded: true,
                underline: Container(),
                value: value,
                hint: Text(hintText),
                menuMaxHeight: 4 * 48,
                focusColor: Colors.grey,
                elevation: 16,
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                style: const TextStyle(
                  color: AppTheme.termsLabelColor,
                  fontSize: 12,
                  height: 14 / 12,
                  fontWeight: FontWeight.w400,
                ),
                onChanged: onChanged,
                items: items,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
