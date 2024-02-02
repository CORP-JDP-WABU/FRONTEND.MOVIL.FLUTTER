import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/custom_filled_button.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/teachers/domain/teacher_course_qualification.dart';
import 'package:wabu/features/teachers/presentation/controllers/teacher_profile/teacher_profile_controller.dart';
import 'package:wabu/features/teachers/presentation/controllers/teacher_profile/teacher_profile_state.dart';

class TeacherProfileView extends ConsumerWidget {
  const TeacherProfileView({super.key});

  static const String name = "teacher_profile_view";
  static const String route = "/$name";

  bool hasQualifications(List<TeacherCourseQualification>? qualifications) {
    if (qualifications == null) return false;

    int totalVotes = 0;
    for (var element in qualifications) {
      totalVotes += element.countQualifications ?? 0;
    }

    return totalVotes > 0;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(teacherProfileControllerProvider);
    final teacher = state.teacher;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.pageStatus == Status.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrión un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
        ref.read(teacherProfileControllerProvider.notifier).setPageIdle();
      }

      // Globals.email = null;
    });

    return Scaffold(
      backgroundColor: AppTheme.greyBackgroundColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
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
                      clipper: BezzierClipper(),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                        ),
                        child: SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomBackButton(
                                  color: Colors.white,
                                  onTap: () => context.pop(),
                                ),
                                const SizedBox(height: 16),
                                Material(
                                  shape: const CircleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 3)),
                                  child: CircleAvatar(
                                    radius: 72,
                                    backgroundImage:
                                        NetworkImage(teacher?.profileUrl ?? ''),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  teacher?.lastName ?? 'no-last-name',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    height: 24 / 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  teacher?.firstName ?? 'no-first-name',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    height: 24 / 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(25))),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 24),
                            child: Column(
                              children: [
                                Text(
                                  teacher?.information ??
                                      'Est eu laborum dolore irure dolor commodo incididunt id irure dolore laborum consequat sint anim. Minim non sit aliqua in aliquip esse amet magna laborum voluptate elit proident officia. Dolore sint nulla duis voluptate ut mollit ea sint non. Sint aliquip est mollit consectetur veniam aliqua mollit ea sit quis.',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    height: 14 / 12,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  teacher?.email ?? 'no - email',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    height: 14 / 12,
                                  ),
                                ),
                                const CustomFilledButton(
                                  text: 'Sugerir editar',
                                  textColor: Colors.white,
                                  verticalPadding: 8,
                                  linearGradient: LinearGradient(
                                    colors: [
                                      AppTheme.linearGradientLight,
                                      AppTheme.linearGradientDark
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    stops: [0.0, 1.0],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                teacher?.course?.name ??
                                    'Teoría de la Comunicación I',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 18,
                                    height: 48 / 18,
                                    fontWeight: FontWeight.w700,
                                    color: AppTheme.courseNameColor),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4),
                                        child: SvgPicture.asset(
                                            'assets/images/svgs/star.svg'),
                                      ),
                                    const SizedBox(width: 28),
                                    Text(
                                      '${teacher?.course?.manyQualifications ?? 0}',
                                      style: const TextStyle(
                                          color: AppTheme.courseNameColor,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          height: 48 / 19),
                                    ),
                                    const SizedBox(width: 12),
                                    SvgPicture.asset(
                                        'assets/images/svgs/person.svg')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        (hasQualifications(
                                teacher?.course?.requiredQualifications))
                            ? Container(
                                child: Column(
                                  children: [
                                    _IntervalQualification(
                                      asset: 'brain',
                                      text: '¿QUÉ TANTO APRENDISTE?',
                                      color: AppTheme.primaryStatsColor,
                                      value: (teacher
                                              ?.course?.requiredQualifications
                                              ?.firstWhere((element) =>
                                                  element.qualification?.code ==
                                                  1)
                                              .averageQualification
                                              ?.toDouble() ??
                                          0.0),
                                      count: 5,
                                    ),
                                    _IntervalQualification(
                                      asset: 'parchment',
                                      text: '¿QUÉ TAN ALTO CALIFICA?',
                                      color: AppTheme.secondaryStatsColor,
                                      value: (teacher
                                              ?.course?.requiredQualifications
                                              ?.firstWhere((element) =>
                                                  element.qualification?.code ==
                                                  2)
                                              .averageQualification
                                              ?.toDouble() ??
                                          0.0),
                                      count: 5,
                                    ),
                                    _IntervalQualification(
                                      asset: 'heart',
                                      text: '¿QUÉ TAN BUENA GENTE ES?',
                                      color: AppTheme.tertiaryStatsColor,
                                      value: (teacher
                                              ?.course?.requiredQualifications
                                              ?.firstWhere((element) =>
                                                  element.qualification?.code ==
                                                  3)
                                              .averageQualification
                                              ?.toDouble() ??
                                          0.0),
                                      count: 5,
                                    ),
                                  ],
                                ),
                              )
                            : const _NoQualifications(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 32, vertical: 12),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/svgs/message.svg'),
                                  const SizedBox(width: 16),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              '${teacher?.course?.manyComments ?? 0}',
                                          style: const TextStyle(
                                            color: AppTheme.commentsColor,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const TextSpan(
                                          text: ' comentarios',
                                          style: TextStyle(
                                            color: AppTheme.commentsColor,
                                            fontSize: 17,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        (hasQualifications(
                                teacher?.course?.optionalQualifications))
                            ? Container(
                                child: Column(
                                  children: [
                                    _ContinuousQualification(
                                      asset: 'clip',
                                      text: 'Carga Académica',
                                      color: AppTheme.secondary1Color,
                                      value: (teacher
                                              ?.course?.optionalQualifications
                                              ?.firstWhere((element) =>
                                                  element.qualification?.code ==
                                                  4)
                                              .averageQualification
                                              ?.toDouble() ??
                                          0.0),
                                    ),
                                    _ContinuousQualification(
                                      asset: 'clock',
                                      text: 'Exigencia',
                                      color: AppTheme.secondary2Color,
                                      value: (teacher
                                              ?.course?.optionalQualifications
                                              ?.firstWhere((element) =>
                                                  element.qualification?.code ==
                                                  5)
                                              .averageQualification
                                              ?.toDouble() ??
                                          0.0),
                                    ),
                                    _ContinuousQualification(
                                      asset: 'pencil',
                                      text: 'Toma de asistencia',
                                      color: AppTheme.secondary3Color,
                                      value: (teacher
                                              ?.course?.optionalQualifications
                                              ?.firstWhere((element) =>
                                                  element.qualification?.code ==
                                                  6)
                                              .averageQualification
                                              ?.toDouble() ??
                                          0.0),
                                    ),
                                  ],
                                ),
                              )
                            : const _NoQualifications(),
                        const SizedBox(height: 28),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (state.pageStatus == Status.loading) const LoaderTransparent(),
        ],
      ),
    );
  }
}

class _IntervalQualification extends StatelessWidget {
  const _IntervalQualification({
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
    required this.count,
  });

  final String asset;
  final String text;
  final Color color;
  final double value;
  final int count;

  @override
  Widget build(BuildContext context) {
    double segment = 1.0 / count;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/svgs/$asset.svg'),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    text,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: color,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  height: 8,
                  child: Row(
                    children: [
                      for (int i = 0; i < count; i++)
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 4),
                        // child:
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child:
                                LayoutBuilder(builder: ((context, constraints) {
                              final width = constraints.maxWidth;

                              return Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color:
                                          AppTheme.progressBarBackgroundColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 8,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 8,
                                    width: width *
                                        ((value == 0)
                                            ? 0
                                            : ((value >= segment * (i + 1))
                                                ? segment
                                                : ((value) < segment * i)
                                                    ? 0
                                                    : (value %
                                                        (segment * i)))) /
                                        segment,
                                  ),
                                ],
                              );
                            })),
                          ),
                        ),
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ContinuousQualification extends StatelessWidget {
  const _ContinuousQualification({
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
  });

  final String asset;
  final String text;
  final Color color;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/svgs/$asset.svg'),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    text,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: color,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                LayoutBuilder(builder: ((context, constraints) {
                  final width = constraints.maxWidth;

                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppTheme.progressBarBackgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [
                              AppTheme.linearGradientProgressBarLight,
                              AppTheme.linearGradientProgressBarDark,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [0.0, 0.78],
                          ),
                        ),
                        height: 8,
                        width: width * value,
                      ),
                    ],
                  );
                }))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NoQualifications extends StatelessWidget {
  const _NoQualifications();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/svgs/emoji-sad.svg'),
          const SizedBox(height: 16),
          const Text(
            'Este profesor todavía no tiene calificaciones',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppTheme.noQualificationsTextColor,
              fontFamily: 'GothamRounded',
            ),
          ),
        ],
      ),
    );
  }
}

class BezzierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.2;
    Path path = Path();
    path.lineTo(0, height - heightOffset);
    path.quadraticBezierTo(
        width * 0.5, height * 1.2, width, height - heightOffset);
    path.lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
