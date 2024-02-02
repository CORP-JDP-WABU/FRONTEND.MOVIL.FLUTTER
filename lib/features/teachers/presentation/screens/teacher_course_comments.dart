import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TeacherCourseComments extends ConsumerWidget {
  const TeacherCourseComments({super.key});

  static const String name = 'teacher_course_comments';
  static const String route = '/$name';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Placeholder(),
    );
  }
}
