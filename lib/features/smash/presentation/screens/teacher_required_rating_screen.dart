import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';

class TeacherRequiredRatingScreen extends ConsumerWidget {
  const TeacherRequiredRatingScreen({
    super.key,
    required this.smashSuggestion,
  });

  static const String name = "teacher_required_rating";
  static const String route = "/$name";
  final SmashSuggestion smashSuggestion;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(teachersQualificationControllerProvider);
    final isLoading =
        state.teacherQualificationStatus == TeacherQualificationStatus.loading;

    return TeachersTinderWrapper(
      isLoading: isLoading,
      content: _TeacherRequiredRatingContent(
        smashSuggestion: smashSuggestion,
      ),
    );
  }
}

class _TeacherRequiredRatingContent extends ConsumerWidget {
  const _TeacherRequiredRatingContent({
    required this.smashSuggestion,
  });

  final SmashSuggestion smashSuggestion;

  bool hasAllRequired(
      TeacherQualificationRequired teacherQualificationRequired) {
    return teacherQualificationRequired.learn != 0 &&
        teacherQualificationRequired.hight != 0 &&
        teacherQualificationRequired.goodPeople != 0;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(teachersQualificationControllerProvider);
    final teacherQualificationRequired = state.teacherQualification.required;
    final isButtonActive = hasAllRequired(teacherQualificationRequired);

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
                    smashSuggestion.teacher?.lastName ?? '',
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color.fromRGBO(2, 51, 106, 1.000),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    smashSuggestion.teacher?.firstName ?? '',
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
                    smashSuggestion.course?.name ?? '',
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
                        '  CALIFICA A TU PROFESOR  ',
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
                  Column(
                    children: [
                      SlidableDiscreteBar(
                        asset: 'brain',
                        text: '¿QUÉ TANTO APRENDISTE?',
                        color: AppTheme.primaryStatsColor,
                        value: 1,
                        count: 5,
                        onRatingUpdate: (rating) {
                          ref
                              .read(teachersQualificationControllerProvider
                                  .notifier)
                              .setLearn(rating);
                        },
                      ),
                      SlidableDiscreteBar(
                        asset: 'parchment',
                        text: '¿QUÉ TAN ALTO CALIFICA?',
                        color: AppTheme.secondaryStatsColor,
                        value: 1,
                        count: 5,
                        onRatingUpdate: (rating) {
                          ref
                              .read(teachersQualificationControllerProvider
                                  .notifier)
                              .setHight(rating);
                        },
                      ),
                      SlidableDiscreteBar(
                        asset: 'heart',
                        text: '¿QUÉ TAN BUENA GENTE ES?',
                        color: AppTheme.tertiaryStatsColor,
                        value: 1,
                        count: 5,
                        onRatingUpdate: (rating) {
                          ref
                              .read(teachersQualificationControllerProvider
                                  .notifier)
                              .setGoodPeople(rating);
                        },
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  CustomFilledButton(
                    text: 'Continuar',
                    textColor: Colors.white,
                    minimumWidth: 186,
                    verticalPadding: 16,
                    backgroundColor:
                        isButtonActive ? null : AppTheme.disabledButtonColor,
                    linearGradient:
                        isButtonActive ? primaryButtonLinearGradient : null,
                    onPressed: () {
                      if (!isButtonActive) return;

                      ref
                          .read(
                              teachersQualificationControllerProvider.notifier)
                          .selectSmashSuggestion(smashSuggestion);

                      context.pushNamed(TeacherRaitingStep2Screen.name);
                    },
                  ),
                  const SizedBox(height: 20),
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
                    NetworkImage(smashSuggestion.teacher?.photoUrl ?? ''),
              ),
            ),
          ],
        );
      },
    );
  }
}
