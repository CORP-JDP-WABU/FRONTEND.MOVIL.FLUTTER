import 'package:flutter/material.dart';

class CourseDocumentsSection extends StatelessWidget {
  const CourseDocumentsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Documentos'),
        SizedBox(height: 8),
        Column(
          children: [
            _CourseDocumentCard(),
            SizedBox(height: 4),
            _CourseDocumentCard(),
            SizedBox(height: 4),
            _CourseDocumentCard(),
          ],
        ),
      ],
    );
  }
}

class _CourseDocumentCard extends StatelessWidget {
  const _CourseDocumentCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      color: Colors.red,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ver todos'),
                  Row(
                    children: [
                      Text('10,523 Documentos'),
                    ],
                  ),
                ],
              ),
            ),
            Text('>'),
          ],
        ),
      ),
    );
  }
}
