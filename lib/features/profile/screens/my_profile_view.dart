import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/profile/screens/my_profile_body.dart';
import 'package:wabu/features/profile/screens/my_profile_header.dart';

class MyProfileView extends ConsumerStatefulWidget {
  const MyProfileView({
    super.key,
  });

  static const String name = "my_profile";
  static const String route = "/$name";

  @override
  ConsumerState<MyProfileView> createState() =>
      _MyProfileViewState();
}

class _MyProfileViewState
    extends ConsumerState<MyProfileView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   // final state = ref.watch(homeViewControllerProvider);
    final StudentTemporal student = StudentTemporal(
      id: '1',
      profileUrl: '',
      firstName: 'Marcos Aliaga ',
      courseName: 'Comunicacion y Publicidad',
      semestre: '2024 - Semestre I'
      
    );
   // final homeDashboard = state.homeDashboard;
/*
    WidgetsBinding.instance.addPostFrameCallback((_) {
        if (state.homeStatus == HomeStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrión un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
        ref.read(teacherCourseProfileControllerProvider.notifier).setPageIdle();
      }
    });*/

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                MyProfileHeader(studentTemporal: student),
                const SizedBox(height: 20.0),
                MyProfileBody(studentTemporal: student),
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

class StudentTemporal {
  late String id;
  String ? profileUrl;
  String ? firstName;
  String ? lastName;
  String ? courseName;
  String ? semestre;

  
  StudentTemporal ({
    required this.id,
    this.profileUrl = '',
    this.firstName = '',
    this.lastName = '',
    this.courseName = '',
    this.semestre = '',

  });
  
}
