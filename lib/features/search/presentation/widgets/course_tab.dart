import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/features/search/domain/courses_search_result/courses_search_result.dart';
import 'package:wabu/features/search/presentation/widgets/course_tab_container.dart';

class CourseTab extends StatefulWidget {
  const CourseTab({
    super.key,
    required this.coursesSearchResults,
  });

  final List<CoursesSearchResult> coursesSearchResults;

  @override
  CourseTabState createState() => CourseTabState();
}

class CourseTabState extends State<CourseTab> {
  @override
  Widget build(BuildContext context) {
    final coursesSearchResult = widget.coursesSearchResults;

    return Container(
        child: widget.coursesSearchResults.isNotEmpty
            ? Column(children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(5.0),
                    itemCount: coursesSearchResult.length,
                    itemBuilder: (context, index) {
                      return CourseTabContainer(
                        course: coursesSearchResult[index],
                      );
                    },
                  ),
                )
              ])
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        'assets/images/svgs/emoji_sad_missing.svg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'No se encontraron \n cursos con tu \n búsqueda',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(191, 191, 191, 1.000),
                          fontFamily: 'Gotham Rounded',
                          fontSize: 24,
                          height: 30 / 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Intenta buscando con \n menos caracteres',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(191, 191, 191, 1.000),
                          fontFamily: 'Gotham Rounded',
                          fontSize: 24,
                          height: 30 / 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ));
  }
}
