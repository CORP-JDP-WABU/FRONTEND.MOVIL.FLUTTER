import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/compare/compare.dart';
import 'package:wabu/features/compare/presentation/widgets/compare_carousel_card.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CompareTeachers extends ConsumerStatefulWidget {
  const CompareTeachers({
    super.key,
    required this.selectedTeacherIds,
  });

  static const String name = "compare_teachers";
  static const String route = "/$name";
  final List<String> selectedTeacherIds;

  @override
  ConsumerState<CompareTeachers> createState() => _CompareTeachers();
}

class _CompareTeachers extends ConsumerState<CompareTeachers> {
  late CarouselController controller;

  @override
  void initState() {
    super.initState();
    controller = CarouselController();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(compareTeachersControllerProvider);
    final compareTeachersStatus = state.compareTeachersStatus;
    final compareTeachers = state.compareTeachers;

    double screenWidth = MediaQuery.of(context).size.width;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (compareTeachersStatus == CompareTeachersStatus.initial) {
        ref
            .read(compareTeachersControllerProvider.notifier)
            .fetchData(widget.selectedTeacherIds);
        return;
      }

      if (compareTeachersStatus == CompareTeachersStatus.error) {
        ref.read(compareTeachersControllerProvider.notifier).setPageIdle();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrió un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
        return;
      }
    });

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: tinderLinearGradient,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                children: [
                  CustomBackButton(
                    color: Colors.white,
                    onTap: () => context.pop(),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Compara a tus profesores',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      height: 24 / 20,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          compareTeachers.isNotEmpty
                              ? CarouselSlider.builder(
                                  carouselController: controller,
                                  itemCount: compareTeachers.length,
                                  itemBuilder: (context, index, realIndex) {
                                    return CompareCarouselCard(
                                      compareTeacher: compareTeachers[index],
                                    );
                                  },
                                  options: CarouselOptions(
                                    clipBehavior: Clip.none,
                                    height: screenWidth * 1.2,
                                    reverse: false,
                                    enableInfiniteScroll: false,
                                  ),
                                )
                              : const UnhappyPathCompare(),
                        ],
                      ),
                    ),
                  ),
                  CarrouselFilterButtons(
                    onQualificationPressed: () {
                      controller.jumpToPage(0);
                      ref
                          .read(compareTeachersControllerProvider.notifier)
                          .orderByQualification();
                    },
                    onLearnPressed: () {
                      controller.jumpToPage(0);
                      ref
                          .read(compareTeachersControllerProvider.notifier)
                          .orderByLearnQualification();
                    },
                    onHighPressed: () {
                      controller.jumpToPage(0);
                      ref
                          .read(compareTeachersControllerProvider.notifier)
                          .orderByHighQualification();
                    },
                    onGoodPressed: () {
                      controller.jumpToPage(0);
                      ref
                          .read(compareTeachersControllerProvider.notifier)
                          .orderByGoodQualification();
                    },
                  ),
                ],
              ),
            ),
          ),
          if (compareTeachersStatus == CompareTeachersStatus.initial ||
              compareTeachersStatus == CompareTeachersStatus.loading)
            const LoaderTransparent()
        ],
      ),
    );
  }
}

class UnhappyPathCompare extends StatelessWidget {
  const UnhappyPathCompare({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
              'No hay profesores \n vinculados a este curso \n todavía',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFFbfbfbf),
                fontFamily: 'Gotham Rounded',
                fontSize: 24,
                height: 30 / 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Puedes sugerirlos en el \n botón arriba a la\n derecha',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0XFFbfbfbf),
                fontFamily: 'Gotham Rounded',
                fontSize: 24,
                height: 30 / 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}