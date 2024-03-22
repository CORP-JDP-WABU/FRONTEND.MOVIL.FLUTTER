import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/common/widgets/profile_clipper.dart';
import 'package:wabu/features/teachers/teachers.dart';

class TeacherProfileScreen extends ConsumerStatefulWidget {
  const TeacherProfileScreen({
    super.key,
    required this.teacherId,
  });

  static const String name = "teacher_profile";
  static const String route = "/$name";
  final String teacherId;

  @override
  ConsumerState<TeacherProfileScreen> createState() =>
      _TeacherProfileScreenState();
}

class _TeacherProfileScreenState extends ConsumerState<TeacherProfileScreen> {
  @override
  void initState() {
    super.initState();
    ref
        .read(teacherProfileControllerProvider.notifier)
        .getTeacherProfile(widget.teacherId);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(teacherProfileControllerProvider);
    final teacherProfile = state.teacherProfile;
    final teacher = teacherProfile.teacher;
    final isLoading =
        state.teacherProfileStatus == TeacherProfileStatus.loading;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ClipPath(
            clipper: ProfileClipper(),
            child: Container(
                height: 400,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(54, 181, 236, 1.000),
                      Color.fromRGBO(47, 163, 240, 1.000),
                      Color.fromRGBO(38, 137, 245, 1.000),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Container()),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  children: [
                    TeacherProfileCardDetails(
                      teacher: teacher,
                    ),
                    const SizedBox(height: 16),
                    if (teacherProfile.courseInCareer.isNotEmpty) ...[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 8.0,
                          ),
                          SvgPicture.asset(
                            'assets/images/svgs/course_icon.svg',
                            height: 15,
                            width: 15,
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          const Text(
                            'Cursos en tu carrera',
                            style: TextStyle(
                              color: Color(0xFF02336A),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                        ],
                      ),
                      TeacherProfileCourses(
                        teacher: teacher,
                        teacherCourses: teacherProfile.courseInCareer,
                      ),
                      const SizedBox(
                        height: 16,
                      )
                    ] else
                      const UnhappyPath(
                          texto1:
                              'No hay cursos vinculados a\n este profesor todavía',
                          texto2:
                              '!Puedes sugerirlos en el botón \n arriba a la derecha'),
                    if (teacherProfile.courseInOtherCareer.isNotEmpty) ...[
                      Row(
                        children: [
                          const SizedBox(
                            width: 8.0,
                          ),
                          SvgPicture.asset(
                            'assets/images/svgs/course_icon_alter.svg',
                            height: 15,
                            width: 15,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Cursos en otras carreras',
                                style: TextStyle(
                                  color: Color(0xFF02336A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TeacherProfileCourses(
                        teacher: teacher,
                        teacherCourses: teacherProfile.courseInOtherCareer,
                      ),
                      const SizedBox(
                        height: 36,
                      )
                    ] else
                      const UnhappyPath(
                          texto1:
                              'No hay cursos vinculados a\n este profesor todavía',
                          texto2:
                              '!Puedes sugerirlos en el botón \n arriba a la derecha'),
                  ],
                ),
              ),
            ),
          ),
          if (isLoading) const LoaderTransparent(),
        ],
      ),
    );
  }
}

class UnhappyPath extends StatelessWidget {
  final String? texto1;
  final String? texto2;

  const UnhappyPath({super.key, required this.texto1, this.texto2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              'assets/images/svgs/emoji_sad_missing.svg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              texto1 ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0XFFBFBFBF),
                fontFamily: 'Gotham Rounded',
                fontSize: 24,
                height: 30 / 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              texto2 ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0XFFBFBFBF),
                fontFamily: 'Gotham Rounded',
                fontSize: 24,
                height: 30 / 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
