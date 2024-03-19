import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              fontFamily: 'SFProDisplay',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
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
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
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
                  const Text('Ver Todos',
                      style: TextStyle(
                        color: Color(0xFF064B96),
                        fontFamily: 'Gotham Rounded',
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
                      const Text('10,523 Documentos',
                          style: TextStyle(
                            color: Color(0xFF6B6A6A),
                            fontFamily: 'SFProDisplay',
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
    );
  }
}
