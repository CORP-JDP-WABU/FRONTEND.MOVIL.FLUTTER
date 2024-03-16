import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/course/course.dart';

class CourseProfileView extends StatelessWidget {
  static const String name = 'course-profile';
  static const String route = '/$name';

  const CourseProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CourseProfileHeader(),
            CourseProfileBody(),
          ],
        ),
      ),
    );
  }
}

class CourseProfileHeader extends StatelessWidget {
  const CourseProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  CustomBackButton(
                    color: Colors.white,
                    onTap: () => context.pop(),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: CourseDetailsCard(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CourseProfileBody extends StatelessWidget {
  const CourseProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          CourseTeachersSection(),
          SizedBox(height: 12),
          CourseDocumentsSection(),
        ],
      ),
    );
  }
}
