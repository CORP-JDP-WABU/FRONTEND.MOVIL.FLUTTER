import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';

class TeacherCommentScreen extends ConsumerWidget {
  const TeacherCommentScreen({super.key});

  static const String name = "teacher_comment";
  static const String route = "/$name";
  static final TextEditingController _commentController =
      TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(teachersTinderControllerProvider);
    final smashSuggestion = state.selectedSmashSuggestion;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.qualificationStatus == TeacherQualificationStatus.loaded) {
        showConfirmationDialog(context);
      }
    });

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(130, 55, 243, 1.000),
              Color.fromRGBO(226, 83, 166, 1.000),
              Color.fromRGBO(251, 225, 155, 1.000),
            ], // Cambia los colores según tu preferencia
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(
                    color: Colors.white,
                    onTap: () => context.pop(),
                  ),
                  IconButton(
                    icon: SvgPicture.asset('assets/images/svgs/menu.svg'),
                    color: Colors.white,
                    onPressed: () => {},
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Material(
                shape: const CircleBorder(
                    side: BorderSide(color: Colors.white, width: 3)),
                child: CircleAvatar(
                  radius: 72,
                  backgroundImage: NetworkImage(
                      smashSuggestion?.teacher?.photoUrl ?? '',
                      scale: 144),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25),
                          bottom: Radius.circular(25))),
                  child: Column(children: [
                    const SizedBox(height: 16),
                    const SizedBox(height: 10),
                    Text(
                      smashSuggestion?.teacher?.lastName ?? '',
                      style: const TextStyle(
                        color: Color.fromRGBO(2, 51, 106, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 20,
                        height: 31 / 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      smashSuggestion?.teacher?.firstName ?? '',
                      style: const TextStyle(
                        color: Color.fromRGBO(2, 51, 106, 1.000),
                        fontFamily: 'SFProDisplay',
                        fontSize: 20,
                        height: 31 / 23,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        smashSuggestion?.course?.name ?? '',
                        style: const TextStyle(
                          color: Color.fromRGBO(2, 51, 106, 1.000),
                          fontFamily: 'SFProDisplay',
                          fontSize: 17,
                          height: 31 / 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Column(
                      children: [
                        Text(
                          'INGRESA UN COMENTARIO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              height: 48 / 18,
                              fontWeight: FontWeight.w700,
                              color: AppTheme.courseNameColor),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Card(
                              child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextField(
                              controller: _commentController,
                              decoration: const InputDecoration(
                                hintText: 'Deja tu comentario aquí',
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
                          const SizedBox(height: 6.0),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: CustomFilledButton(
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
                              .read(teachersTinderControllerProvider.notifier)
                              .submitQualification();

                          // TODO: ESTA LOGICA VA SOBRE EL WIDGET DE TEXTO
                          // final text = _commentController.text;
                          // if (text.isEmpty || text.length >= 20) {
                          // } else {}
                        },
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  void showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
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
    );
  }
}
