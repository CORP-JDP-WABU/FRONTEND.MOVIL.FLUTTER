import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            height: 360,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
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
            child: Container()        
          ),
        ),
    
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  children: [   
                    TeacherProfileCardDetails(
                      teacher: teacher,
                    ),
                    const SizedBox(height: 16),
                    if (teacherProfile.courseInCareer.isNotEmpty) ...[
                       Row(
                         children: [
                          Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: SvgPicture.asset(
                                  'assets/images/svgs/course_icon.svg',
                                  height: 15,
                                  width: 15,
                                ),
                            ),
                           const Padding(
                            padding:EdgeInsets.symmetric(horizontal: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Cursos en tu carrera',
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
                        teacherCourses: teacherProfile.courseInCareer,
                      ),
                      const SizedBox(
                        height: 16,
                      )
                    ],
                    if (teacherProfile.courseInOtherCareer.isNotEmpty) ...[
                      Row(
                        children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: SvgPicture.asset(
                                  'assets/images/svgs/course_icon_alter.svg',
                                  height: 15,
                                  width: 15,
                                ),
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
                    ],
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
