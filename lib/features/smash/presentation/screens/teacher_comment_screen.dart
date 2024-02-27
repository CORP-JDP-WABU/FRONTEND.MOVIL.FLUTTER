import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';

class TeacherCommentScreen extends ConsumerWidget {
  const TeacherCommentScreen({super.key});

  static const String name = "teacher_comment";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(teachersTinderControllerProvider);
    final isLoading = state.pageStatus == TeachersTinderStatus.loading;

    return TeachersTinderWrapper(
      isLoading: isLoading,
      content: const _TeacherRequiredRatingContent(),
    );
  }
}

class _TeacherRequiredRatingContent extends ConsumerWidget {
  const _TeacherRequiredRatingContent();

  bool hasAllRequired(
      TeacherQualificationRequired teacherQualificationRequired) {
    return teacherQualificationRequired.learn != 0 &&
        teacherQualificationRequired.hight != 0 &&
        teacherQualificationRequired.goodPeople != 0;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(teachersTinderControllerProvider);
    final smashSuggestion = state.selectedSmashSuggestion;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.qualificationStatus == TeacherQualificationStatus.loaded) {
        showConfirmationDialog(context);
      }
    });

    return LayoutBuilder(
      builder: (context, contraints) {
        final maxHeight = contraints.maxHeight;
        final maxWidth = contraints.maxWidth;

        return Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: maxHeight - 72,
              width: maxWidth,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 80),
                    Text(
                      smashSuggestion?.teacher?.lastName ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color.fromRGBO(2, 51, 106, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      smashSuggestion?.teacher?.firstName ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Color.fromRGBO(2, 51, 106, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      smashSuggestion?.course?.name ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF5A5A5A),
                        fontFamily: 'SFProDisplay',
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/svgs/Vector 13.svg'),
                        const Text(
                          '  INGRESA UN COMENTARIO  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.courseNameColor,
                          ),
                        ),
                        SvgPicture.asset('assets/images/svgs/Vector 13.svg'),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              style: const TextStyle(fontSize: 11),
                              decoration: const InputDecoration(
                                hintText: 'Deja tu comentario aquí',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                              maxLines: 7,
                              maxLength: 280,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              onChanged: (value) {
                                ref
                                    .read(teachersTinderControllerProvider
                                        .notifier)
                                    .setComment(value);
                              },
                            ),
                          )),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  child: const Text(
                                    'SALIR SIN COMENTAR',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        decoration: TextDecoration.underline,
                                        fontFamily: 'GothamRounded'),
                                  ),
                                  onTap: () {
                                    ref
                                        .read(teachersTinderControllerProvider
                                            .notifier)
                                        .submitQualification();
                                  }),
                              CustomFilledButton(
                                text: 'PUBLICAR',
                                textColor: Colors.white,
                                verticalPadding: 8,
                                linearGradient: const LinearGradient(
                                  colors: [
                                    AppTheme.linearGradientLight,
                                    AppTheme.linearGradientDark
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [0.0, 1.0],
                                ),
                                onPressed: () {
                                  ref
                                      .read(teachersTinderControllerProvider
                                          .notifier)
                                      .submitQualification();
                                },
                              ),
                            ])),
                    const SizedBox(height: 6),
                  ]),
            ),
            Positioned(
              top: 0,
              child: SolidCircleAvatar(
                radius: 72,
                borderWidth: 3,
                borderColor: Colors.white,
                imageProvider:
                    NetworkImage(smashSuggestion?.teacher?.photoUrl ?? ''),
              ),
            ),
          ],
        );
      },
    );
  }

  void showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                'assets/lotties/data_sent.json',
                height: 150,
                width: 150,
              ),
              const SizedBox(height: 10),
              const Text(
                'Tu calificación ha sido confirmada',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppTheme.bodyTextColor,
                  fontFamily: 'SFProDisplay',
                  fontSize: 17,
                  height: 20 / 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    ).then((value) {
      context.pop();
      if (ModalRoute.of(context)?.settings.name == SmashView.name) return;
      context.pop();
      if (ModalRoute.of(context)?.settings.name == SmashView.name) return;
      context.pop();
    });
  }
}
