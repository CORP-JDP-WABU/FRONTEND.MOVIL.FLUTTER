import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/features/course/presentation/screens/document_list_screen.dart';

class CourseDocumentsSection extends StatelessWidget {
  const CourseDocumentsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Documentos',
            style: TextStyle(
              color: Color(0XFF6889AB),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        SizedBox(height: 8),
        Column(
          children: [
            _CourseDocumentCard(
              text: 'Ver Todos',
              value: '10,523 Documentos',
            ),
            SizedBox(height: 4),
            _CourseDocumentCard(
              text: 'Ver Todos',
              value: '10,523 Documentos',
            ),
            SizedBox(height: 4),          
            _CourseDocumentCard(
              text: 'Ver Todos',
              value: '10,523 Documentos',
            ),
          ],
        ),
      ],
    );
  }
}

class _CourseDocumentCard extends StatelessWidget {
  const _CourseDocumentCard({required this.text, required this.value});
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(text,
                        style: const TextStyle(
                          color: Color(0xFF064B96),
                          fontFamily: 'GothamRounded',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/svgs/document_gradient_small.svg',
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(value,
                            style: const TextStyle(
                              color: Color(0xFF6B6A6A),
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/images/svgs/arrow_gradient_small.svg',
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        context.pushNamed(DocumentListScreen.name);
      },
    );
  }
}
