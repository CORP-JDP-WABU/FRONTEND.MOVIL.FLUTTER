import 'package:flutter/material.dart';
import 'package:wabu/config/theme/app_theme.dart';

class DocumentListFilterSection extends StatelessWidget {
  const DocumentListFilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            _FilterDocumentButton(label: 'Mas valorados'),
            SizedBox(width: 12),
            _FilterDocumentButton(label: 'Últimos subidos'),
            SizedBox(width: 12),
            _FilterDocumentButton(label: 'Ciclo más reciente'),
          ],
        )
      ],
    );
  }
}

class _FilterDocumentButton extends StatelessWidget {
  const _FilterDocumentButton({
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppTheme.greyBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Color(0xFFA2A2A2),
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
