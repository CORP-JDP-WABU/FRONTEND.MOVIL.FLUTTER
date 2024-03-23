import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/search/domain/courses_search_result/courses_search_result.dart';
import 'package:wabu/features/course/presentation/screens/course_carrousel.dart';
import 'package:wabu/utils/utils.dart';

class DocumentListContainer extends StatelessWidget {
  const DocumentListContainer({
    super.key,
   // required this.course,
  });

  // final CoursesSearchResult course;

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
                    const Text('Resumen Final de Prácticas',
                        style: TextStyle(
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
                        const Text('Profesor',
                            style: TextStyle(
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
        //context.pushNamed(DocumentListScreen.name);
      },
    );
  }
}
