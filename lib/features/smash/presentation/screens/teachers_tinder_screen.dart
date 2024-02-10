import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:wabu/features/smash/presentation/screens/screens.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/features/smash/presentation/controllers/controllers.dart';
import 'package:wabu/features/smash/presentation/widgets/widgets.dart';

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
        final teacherSuggestion = widget.state.smashSuggestions?[previousIndex];
        final courseId = teacherSuggestion?.course?.idCourse ?? '';
        final teacherId = teacherSuggestion?.teacher?.idTeacher ?? '';

        ref
            .read(teachersTinderControllerProvider.notifier)
            .ignoreTeacher(courseId, teacherId);
        break;
      case CardSwiperDirection.right:
        ref
            .read(teachersTinderControllerProvider.notifier)
            .selectSmashSuggestion(previousIndex);
        context.pushNamed(TeacherRequiredRatingScreen.name);
        break;
      default:
        break;
    }

    if (direction == CardSwiperDirection.right) {}
    return true;
  }

  Future<void> _onEnd() {
    ref.read(teachersTinderControllerProvider.notifier).fetchMoreSuggestions();
    return Future.value();
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
                  onEnd: _onEnd,
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
    required this.onEnd,
  });

  final CardSwiperController controller;
  final List<SmashSuggestion> smashSuggestions;
  final bool Function(int, int?, CardSwiperDirection) onSwipe;
  final Future<void> Function() onEnd;

  @override
  Widget build(BuildContext context) {
    return CardSwiper(
      allowedSwipeDirection: const AllowedSwipeDirection.symmetric(
        horizontal: true,
      ),
      controller: controller,
      cardsCount: smashSuggestions.length,
      isLoop: false,
      onEnd: onEnd,
      onSwipe: onSwipe,
      scale: 1,
      backCardOffset: const Offset(16, 16),
      cardBuilder: (_, index, __, ___) {
        final smashSuggestion = smashSuggestions[index];
        return CardView(smashSuggestion: smashSuggestion);
      },
    );
  }
}
