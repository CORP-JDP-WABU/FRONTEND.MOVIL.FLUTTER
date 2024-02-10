import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/controllers/controllers.dart';
import 'package:wabu/features/smash/presentation/screens/screens.dart';
import 'package:wabu/features/smash/presentation/widgets/widgets.dart';

class TeacherRequiredRatingScreen extends ConsumerWidget {
  const TeacherRequiredRatingScreen({super.key});

  static const String name = "teacher_required_rating";
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
    final teacherQualificationRequired = state.teacherQualification.required;
    final isButtonActive = hasAllRequired(teacherQualificationRequired);

    return LayoutBuilder(
      builder: (context, contraints) {
        final maxHeight = contraints.maxHeight;
        final maxWidth = contraints.maxWidth;

        return Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 72,
              child: Container(
                height: maxHeight - 72,
                width: maxWidth,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
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
                        height: 31 / 23,
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
                        height: 31 / 23,
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
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'CALIFICA A TU PROFESOR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.courseNameColor,
                      ),
                    ),
                    Expanded(child: Container()),
                    Column(
                      children: [
                        SlidableDiscreteBar(
                          asset: 'brain',
                          text: '¿QUÉ TANTO APRENDISTE?',
                          color: AppTheme.primaryStatsColor,
                          value: 0,
                          count: 5,
                          onRatingUpdate: (rating) {
                            ref
                                .read(teachersTinderControllerProvider.notifier)
                                .setLearn(rating);
                          },
                        ),
                        SlidableDiscreteBar(
                          asset: 'parchment',
                          text: '¿QUÉ TAN ALTO CALIFICA?',
                          color: AppTheme.secondaryStatsColor,
                          value: 0,
                          count: 5,
                          onRatingUpdate: (rating) {
                            ref
                                .read(teachersTinderControllerProvider.notifier)
                                .setHight(rating);
                          },
                        ),
                        SlidableDiscreteBar(
                          asset: 'heart',
                          text: '¿QUÉ TAN BUENA GENTE ES?',
                          color: AppTheme.tertiaryStatsColor,
                          value: 0,
                          count: 5,
                          onRatingUpdate: (rating) {
                            ref
                                .read(teachersTinderControllerProvider.notifier)
                                .setGoodPeople(rating);
                          },
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    CustomFilledButton(
                      text: 'CONTINUAR',
                      textColor: Colors.white,
                      verticalPadding: 8,
                      backgroundColor:
                          isButtonActive ? null : AppTheme.disabledButtonColor,
                      linearGradient:
                          isButtonActive ? primaryButtonLinearGradient : null,
                      onPressed: () {
                        if (!isButtonActive) return;

                        context.pushNamed(TeacherRaitingStep2Screen.name);
                      },
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            SolidCircleAvatar(
              radius: 72,
              borderWidth: 3,
              borderColor: Colors.white,
              imageProvider:
                  NetworkImage(smashSuggestion?.teacher?.photoUrl ?? ''),
            ),
          ],
        );
      },
    );
  }
}
