import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';
import 'package:wabu/utils/utils.dart';

class TeachersTinderScreen extends ConsumerWidget {
  const TeachersTinderScreen({super.key});

  static const String name = "teachers_tinder";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(teachersTinderControllerProvider);
    final isLoading = state.pageStatus == TeachersTinderStatus.loading;

    return TeachersTinderWrapper(
      isLoading: isLoading,
      content: _TeachersTinderScreenContent(
        state: state,
        isLoading: isLoading,
      ),
    );
  }
}

class _TeachersTinderScreenContent extends ConsumerStatefulWidget {
  const _TeachersTinderScreenContent({
    required this.state,
    required this.isLoading,
  });

  final TeachersTinderState state;
  final bool isLoading;

  @override
  ConsumerState<_TeachersTinderScreenContent> createState() =>
      _TeacheresTinderScreenContentState();
}

class _TeacheresTinderScreenContentState
    extends ConsumerState<_TeachersTinderScreenContent> {
  final CardSwiperController controller = CardSwiperController();

  @override
  void initState() {
    super.initState();
    ref.read(teachersTinderControllerProvider.notifier).fetchData();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    switch (direction) {
      case CardSwiperDirection.left:
        FirebaseAnalyticsHandler.instance.logSelectContent(
          contentType: AnalyticsContentType.action.contentType,
          itemId: AnalyticsContentItemId.teacherIgnore.itemId,
        );

        final teacherSuggestion = widget.state.smashSuggestions?[previousIndex];
        final courseId = teacherSuggestion?.course?.idCourse ?? '';
        final teacherId = teacherSuggestion?.teacher?.idTeacher ?? '';

        ref
            .read(teachersTinderControllerProvider.notifier)
            .ignoreTeacher(courseId, teacherId);

        if (currentIndex == null) {
          ref
              .read(teachersTinderControllerProvider.notifier)
              .fetchMoreSuggestions();
        }
        break;
      case CardSwiperDirection.right:
        FirebaseAnalyticsHandler.instance.logSelectContent(
          contentType: AnalyticsContentType.action.contentType,
          itemId: AnalyticsContentItemId.teacherSmash.itemId,
        );

        final teacherSuggestion = widget.state.smashSuggestions?[previousIndex];

        if (teacherSuggestion == null) break;

        ref
            .read(teachersQualificationControllerProvider.notifier)
            .selectSmashSuggestion(teacherSuggestion);

        context.pushNamed(
          TeacherRequiredRatingScreen.name,
          extra: teacherSuggestion,
        );
        break;
      default:
        break;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    final smashSuggestions = widget.state.smashSuggestions ?? [];

    return Column(
      children: [
        Expanded(
          child: (smashSuggestions.isNotEmpty)
              ? TeachersCardSwiper(
                  controller: controller,
                  smashSuggestions: smashSuggestions,
                  onSwipe: _onSwipe,
                )
              : (widget.isLoading)
                  ? Container()
                  : Container(),
        ),
        const SizedBox(height: 16),
        TeachersTinderButtons(controller: controller),
      ],
    );
  }
}

class TeachersCardSwiper extends StatelessWidget {
  const TeachersCardSwiper({
    super.key,
    required this.controller,
    required this.smashSuggestions,
    required this.onSwipe,
  });

  final CardSwiperController controller;
  final List<SmashSuggestion> smashSuggestions;
  final bool Function(int, int?, CardSwiperDirection) onSwipe;

  @override
  Widget build(BuildContext context) {
    return CardSwiper(
      allowedSwipeDirection: const AllowedSwipeDirection.symmetric(
        horizontal: true,
      ),
      controller: controller,
      cardsCount: smashSuggestions.length,
      numberOfCardsDisplayed: min(2, smashSuggestions.length),
      isLoop: false,
      onSwipe: onSwipe,
      scale: 1,
      onEnd: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SvgPicture.asset(
                      'assets/images/svgs/emoji_sad_missing.svg',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'No tenemos más \n sugerencias \n de profesores en este \n momento',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(191, 191, 191, 1.000),
                        fontFamily: 'Gotham Rounded',
                        fontSize: 24,
                        height: 30 / 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      backCardOffset: const Offset(16, 16),
      cardBuilder: (_, index, __, ___) {
        final smashSuggestion = smashSuggestions[index];
        return CardView(smashSuggestion: smashSuggestion);
      },
    );
  }
}
