import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/domain/entities.dart';
import 'package:wabu/features/teachers/presentation/widgets/teacher_profile_card_details.dart';
import 'package:wabu/features/teachers/presentation/widgets/teacher_profile_card_header.dart';
import 'package:wabu/features/teachers/presentation/widgets/teacher_profile_courses.dart';
  import 'package:wabu/features/teachers/presentation/widgets/widgets.dart';

class TeacherProfileScreen extends ConsumerStatefulWidget {
  const TeacherProfileScreen({
    super.key,
    required this.teacher,
  });

  static const String name = "teacher_profile";
  static const String route = "/$name";
  final Teacher teacher;

  @override
  ConsumerState<TeacherProfileScreen> createState() =>
      _TeacherProfileScreenState();
}

class _TeacherProfileScreenState
    extends ConsumerState<TeacherProfileScreen> {
  @override
  void initState() {
    super.initState();
   /* ref.read(teacherProfileControllerProvider.notifier).fetchData(
          widget.teacher.idTeacher ?? ''
        );*/
  }

  @override
  Widget build(BuildContext context) {
    final teacher = widget.teacher;
  /*  final state = ref.watch(teacherProfileControllerProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.pageStatus == TeacherCourseProfileStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrión un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
        ref.read(teacherProfileControllerProvider.notifier).setPageIdle();
      }
    });*/

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                TeacherProfileCardHeader(teacher: teacher),
                TeacherProfileDetails(teacher: teacher),
                 TeacherProfileCardDetails(teacher: teacher),
                TeacherProfileCourses(teacher: teacher),
              ],
            ),
          ),
          /*if (state.pageStatus == TeacherCourseProfileStatus.loading)
            const LoaderTransparent(),*/
        ],
      ),
    );
  }
}
