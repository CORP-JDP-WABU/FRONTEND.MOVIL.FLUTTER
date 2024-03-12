import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';
import 'package:wabu/features/teachers/teachers.dart';

class TeacherCommentScreen extends ConsumerWidget {
  const TeacherCommentScreen({super.key});

  static const String name = "teacher_comment";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(teachersQualificationControllerProvider);
    final isLoading =
        state.teacherQualificationStatus == TeacherQualificationStatus.loading;

    return TeachersTinderWrapper(
      isLoading: isLoading,
      content: const _TeacherRequiredRatingContent(),
    );
  }
}

class _TeacherRequiredRatingContent extends ConsumerStatefulWidget {
  const _TeacherRequiredRatingContent();

  @override
  ConsumerState<_TeacherRequiredRatingContent> createState() =>
      _TeacherRequiredRatingContentState();
}

class _TeacherRequiredRatingContentState
    extends ConsumerState<_TeacherRequiredRatingContent> {
  FocusNode commentFocusNode = FocusNode();
  late TextEditingController commentController;

  @override
  void initState() {
    super.initState();
    commentController = TextEditingController();
  }

  @override
  void dispose() {
    commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(teachersQualificationControllerProvider);
    final smashSuggestion = state.selectedSmashSuggestion;

    commentController.text = state.teacherComment.comment;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.teacherQualificationStatus ==
          TeacherQualificationStatus.loaded) {
        showConfirmationDialog(context);
      }

      if (state.teacherQualificationStatus ==
          TeacherQualificationStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrió un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
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
                      fontSize: 20,
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
                      fontSize: 20,
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
                      fontSize: 16,
                    ),
                  ),
                  Expanded(child: Container()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/svgs/Vector 13.svg'),
                      const Text(
                        '  INGRESA UN COMENTARIO  ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.courseNameColor,
                        ),
                      ),
                      SvgPicture.asset('assets/images/svgs/Vector 13.svg'),
                    ],
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextField(
                              controller: commentController,
                              style: const TextStyle(fontSize: 11),
                              decoration: const InputDecoration(
                                hintText: 'Deja tu comentario aquí',
                                hintStyle: TextStyle(fontSize: 11),
                              ),
                              maxLines: 12,
                              maxLength: 280,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              focusNode: commentFocusNode,
                              onTapOutside: (event) {
                                commentFocusNode.unfocus();
                              },
                              onChanged: (value) {
                                ref
                                    .read(
                                        teachersQualificationControllerProvider
                                            .notifier)
                                    .setComment(value);
                              },
                            ),
                          ),
                        ),
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
                                  .read(teachersQualificationControllerProvider
                                      .notifier)
                                  .submitQualification(false);
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
                                .read(teachersQualificationControllerProvider
                                    .notifier)
                                .submitQualification(true);
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                ],
              ),
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
        print('Dialog');
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
      Navigator.popUntil(
        context,
        (route) {
          return ModalRoute.withName(TeacherProfileScreen.name).call(route) ||
              ModalRoute.withName(TeachersTinderScreen.name).call(route);
        },
      );
    });
  }
}
