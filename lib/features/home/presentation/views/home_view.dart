import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/authentication/presentation/widgets/video_background.dart';
import 'package:wabu/features/home/domain/domain.dart';
import 'package:wabu/features/home/presentation/presentation.dart';
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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.homeStatus == HomeStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrión un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
      }
    });

    return Stack(
      children: [
        const VideoBackground(),
        _HomeViewBody(
          student: student,
          homeDashboard: homeDashboard,
        ),
        if (state.homeStatus == HomeStatus.loading) const LoaderTransparent(),
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
            HomeViewContent(student: student),
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
