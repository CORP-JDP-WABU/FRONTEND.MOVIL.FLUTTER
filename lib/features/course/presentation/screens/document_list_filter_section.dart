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
            _FilterDocumentButton(text: 'Mas valorados'),
            SizedBox(width: 12),
            _FilterDocumentButton(text: 'Últimos subidos'),
            SizedBox(width: 12),
            _FilterDocumentButton(text: 'Ciclo más reciente'),
          ],
        )
      ],
    );
  }
}

class _FilterDocumentButton extends StatelessWidget {
  const _FilterDocumentButton({
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 27,
        decoration: BoxDecoration(
          borderRadius:  BorderRadius.circular(13.5),
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
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [         
              Text(text,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFFA2A2A2),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  )),
        
            ],
          ),
        ),
      ),
    );
  }
}
