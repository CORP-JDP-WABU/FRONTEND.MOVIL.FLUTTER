import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/features/course/course.dart';
import 'package:wabu/features/documents/documents.dart';

class CourseDocumentsSection extends StatelessWidget {
  const CourseDocumentsSection({
    super.key,
    required this.courseId,
    required this.documents,
  });

  final String courseId;
  final List<CourseProfileDocument> documents;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Documentos',
          style: TextStyle(
            color: Color(0XFF6889AB),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: documents.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final document = documents[index];

            return _CourseDocumentCard(
              documentsCategory: document.name,
              documentsCount:
                  '${document.quantity} ${(document.quantity == 1) ? 'Documento' : 'Documentos'}',
              onTap: () {
                context.pushNamed(
                  CourseDocumentsView.name,
                  extra: CourseDocumentsParameters(
                    courseId: courseId,
                    documentType: document.typeDocument,
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class _CourseDocumentCard extends StatelessWidget {
  const _CourseDocumentCard({
    required this.documentsCategory,
    required this.documentsCount,
    required this.onTap,
  });

  final String documentsCategory;
  final String documentsCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 64,
        margin: const EdgeInsets.symmetric(vertical: 2),
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
                    Text(
                      documentsCategory,
                      style: const TextStyle(
                        color: Color(0xFF064B96),
                        fontFamily: 'GothamRounded',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/svgs/document_gradient_small.svg',
                        ),
                        const SizedBox(width: 4),
                        Text(
                          documentsCount,
                          style: const TextStyle(
                            color: Color(0xFF6B6A6A),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
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
    );
  }
}
