import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:wabu/common/widgets/gradient_circle_avatar.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/common/widgets/solid_circle_avatar.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/authentication/presentation/widgets/video_background.dart';
import 'package:wabu/features/home/presentation/controllers/home_view_controller.dart';
import 'package:wabu/features/home/presentation/controllers/home_view_state.dart';
import 'package:wabu/features/student/domain/domain.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  static const String name = "home_view";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewControllerProvider);
    final student = state.student;

    return Stack(
      children: [
        const VideoBackground(),
        _HomeViewBody(student: student),
        if (state.pageStatus == HomeViewStatus.loading)
          const LoaderTransparent(),
      ],
    );
  }
}

class _HomeViewBody extends StatelessWidget {
  const _HomeViewBody({required this.student});

  final Student student;

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
            const HomeDashboardItem(
              color: AppTheme.wabuersDashboardColor,
              value: 5,
              text: 'WABUERS ONLINE',
            ),
            const HomeDashboardItem(
              color: AppTheme.qualificationsDashboardColor,
              value: 5,
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

class HomeDashboardItem extends StatelessWidget {
  const HomeDashboardItem({
    super.key,
    required this.color,
    required this.value,
    required this.text,
  });

  final Color color;
  final int value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, contraints) {
        final maxHeight = contraints.maxHeight;
        final maxWidth = contraints.maxWidth;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: maxWidth * 0.05),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.centerLeft,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 48),
                  Expanded(
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      elevation: 5,
                      child: Container(
                        height: min(maxHeight * 0.65, 80),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 52,
                          ),
                          child: Center(
                            child: Text(
                              text,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: -36,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: min(maxHeight * 0.8, 98),
                      width: min(maxHeight * 0.8, 98),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(min(maxHeight * 0.4, 49) + 0),
                        border: Border.all(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                            'assets/images/svgs/wabuers_dashboard.svg'),
                      ),
                    ),
                    Lottie.asset(
                      'assets/lotties/wabuers_dashboard.json',
                      height: min(maxHeight * 0.9, 198),
                      width: min(maxHeight * 0.9, 198),
                    ),
                  ],
                ),
              )
              // SolidCircleAvatar(
              //   borderWidth: 0,
              //   radius: min(maxHeight * 0.4, 49),
              //   imageProvider: SvgPicture.asset('assetName'),
              // ),
            ],
          ),
        );
      }),
    );
  }
}
