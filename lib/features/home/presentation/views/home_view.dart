import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/common/widgets/solid_circle_avatar.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/authentication/presentation/widgets/video_background.dart';
import 'package:wabu/features/home/domain/domain.dart';
import 'package:wabu/features/home/presentation/controllers/controllers.dart';
import 'package:wabu/features/home/presentation/widgets/home_dashboard_item.dart';
import 'package:wabu/features/student/domain/domain.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  static const String name = "home_view";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewControllerProvider);
    final student = state.student;
    final homeDashboard = state.homeDashboard;

    return Stack(
      children: [
        const VideoBackground(),
        _HomeViewBody(
          student: student,
          homeDashboard: homeDashboard,
        ),
        if (state.pageStatus == HomeViewStatus.loading)
          const LoaderTransparent(),
      ],
    );
  }
}

class _HomeViewBody extends StatelessWidget {
  const _HomeViewBody({
    required this.student,
    required this.homeDashboard,
  });

  final Student student;
  final HomeDashboard homeDashboard;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _HomeViewContent(student: student),
            const SizedBox(height: 24),
            HomeDashboardItem(
              iconAsset: 'assets/images/svgs/wabuers_dashboard.svg',
              lottieAsset: 'assets/lotties/wabuers_dashboard.json',
              color: AppTheme.wabuersDashboardColor,
              value: homeDashboard.kpis?.manyStudentConnected ?? 0,
              text: 'WABUERS ONLINE',
            ),
            HomeDashboardItem(
              iconAsset: 'assets/images/svgs/qualifications_dashboard.svg',
              lottieAsset: 'assets/lotties/qualifications_dashboard.json',
              color: AppTheme.qualificationsDashboardColor,
              value: homeDashboard.kpis?.manyQualificationTeacher ?? 0,
              text: 'CALIFICACIONES A PROFESORES',
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeViewContent extends StatelessWidget {
  const _HomeViewContent({required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '¡Bienvenido!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 31,
            height: 48 / 31,
            fontFamily: 'GothamRounded',
          ),
        ),
        SolidCircleAvatar(
          radius: 52,
          borderWidth: 7,
          borderColor: Colors.white,
          imageProvider: (student.profileUrl.isNotEmpty)
              ? AssetImage('assets/images/${student.profileUrl}')
              : null,
        ),
        const SizedBox(height: 8),
        Text(
          '${student.firstName} ${student.lastName}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: 'GothamRounded',
          ),
        ),
        Text(
          student.career,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/svgs/university.svg',
              width: 32,
              height: 32,
            ),
            const SizedBox(width: 8),
            const Flexible(
              child: Text(
                '¿QUÉ ESTÁ PASANDO EN TU UNIVERSIDAD?',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  fontFamily: 'GothamRounded',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
