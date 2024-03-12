import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';

class TeacherRaitingStep2Screen extends ConsumerWidget {
  const TeacherRaitingStep2Screen({super.key});

  static const String name = "teacher_rating_step2_teacher";
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
    final state = ref.watch(teachersQualificationControllerProvider);
    final smashSuggestion = state.selectedSmashSuggestion;

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
                        SvgPicture.asset('assets/images/svgs/Vector 15.svg'),
                        const Text(
                          '  LLENA LOS DATOS SI LOS RECUERDAS  ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppTheme.courseNameColor,
                          ),
                        ),
                        SvgPicture.asset('assets/images/svgs/Vector 15.svg'),
                      ],
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        ContinuousQualification(
                          asset: 'clip',
                          text: '¿Deja mucho trabajo?',
                          color: AppTheme.secondary1Color,
                          selectedRating: const [
                            'No sé',
                            'Poco',
                            'Medio',
                            'Mucho'
                          ],
                          value: 0,
                          onSelected: (index) {
                            ref
                                .read(teachersQualificationControllerProvider
                                    .notifier)
                                .setWorked(index + 1);
                          },
                        ),
                        ContinuousQualification(
                          asset: 'clock',
                          text: '¿Permite llegar tarde?',
                          color: AppTheme.secondary1Color,
                          selectedRating: const [
                            'No sé',
                            'Nunca',
                            'A veces',
                            'Siempre'
                          ],
                          value: 0,
                          onSelected: (index) {
                            ref
                                .read(teachersQualificationControllerProvider
                                    .notifier)
                                .setLate(index + 1);
                          },
                        ),
                        ContinuousQualification(
                          asset: 'pencil',
                          text: '¿Toma de asistencia?',
                          selectedRating: const [
                            'No sé',
                            'Nunca',
                            'A veces',
                            'Siempre'
                          ],
                          color: AppTheme.secondary1Color,
                          value: 0,
                          onSelected: (index) {
                            ref
                                .read(teachersQualificationControllerProvider
                                    .notifier)
                                .setAssistance(index + 1);
                          },
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    CustomFilledButton(
                      text: 'CONTINUAR',
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
                        context.pushNamed(TeacherCommentScreen.name);
                      },
                    ),
                    const SizedBox(height: 20),
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
}

class ContinuousQualification extends StatefulWidget {
  final String asset;
  final String text;
  final Color color;
  final int value;
  final List<String> selectedRating;
  final Function(int) onSelected;

  const ContinuousQualification({
    Key? key,
    required this.asset,
    required this.text,
    required this.color,
    required this.value,
    required this.selectedRating,
    required this.onSelected,
  }) : super(key: key);

  @override
  _ContinuousQualification createState() => _ContinuousQualification();
}

class _ContinuousQualification extends State<ContinuousQualification> {
  late List<bool> isSelected;

  @override
  void initState() {
    super.initState();

    isSelected = List.generate(widget.selectedRating.length, (index) => false);

    isSelected[widget.value] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/svgs/${widget.asset}.svg',
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.text,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: widget.color,
                            fontSize: 13,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            LayoutBuilder(builder: ((context, constraints) {
              final width = constraints.maxWidth;

              return SizedBox(
                height: 24,
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < widget.selectedRating.length; i++)
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            for (int j = 0; j < isSelected.length; j++) {
                              isSelected[j] = (j == i);
                            }
                          });
                          widget.onSelected(i);
                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(5)),
                          fixedSize:
                              MaterialStateProperty.all(const Size(62, 24)),
                          backgroundColor: MaterialStateProperty.all(
                            isSelected[i]
                                ? widget.color
                                : const Color.fromRGBO(245, 245, 246, 1.000),
                          ),
                        ),
                        child: Text(
                          widget.selectedRating[i],
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'Inter',
                            color: isSelected[i] ? Colors.white : Colors.black,
                          ),
                        ),
                      )
                  ],
                ),
              );
            }))
          ],
        ));
  }
}
