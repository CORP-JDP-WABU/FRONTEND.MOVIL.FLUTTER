import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/compare/compare.dart';
import 'package:wabu/features/course/presentation/controllers/controllers.dart';
import 'package:wabu/features/course/presentation/widgets/card_view_carrousel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CompareTeachers extends ConsumerStatefulWidget {
  const CompareTeachers({
    super.key,
    required this.selectedTeacherIds,
  });

  static const String name = "compare_carrousel";
  static const String route = "/$name";
  final List<String> selectedTeacherIds;

  @override
  ConsumerState<CompareTeachers> createState() => _CompareTeachers();
}

class _CompareTeachers extends ConsumerState<CompareTeachers> {
  final CardSwiperController controller = CardSwiperController();
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(compareTeachersControllerProvider);
    final compareTeachersStatus = state.compareTeachersStatus;
    final compareTeachers = state.compareTeachers;

    double screenHeigth = MediaQuery.of(context).size.width;

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
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // teachers.isNotEmpty
                              //     ? CarouselSlider.builder(
                              //         itemCount: teachers.length,
                              //         itemBuilder: (context, index, realIndex) {
                              //           // return CardViewCarrousel(
                              //           //   courseTeacher:
                              //           //       teachers[index],
                              //           //   courseId: widget.courseId,
                              //           // );
                              //           return const Placeholder();
                              //         },
                              //         options: CarouselOptions(
                              //           clipBehavior: Clip.none,
                              //           height: screenHeigth * 1.2,
                              //           reverse: true,
                              //           onPageChanged: (index, reason) =>
                              //               setState(() => activeIndex = index),
                              //         ))
                              //     : Center(
                              //         child: Column(
                              //           mainAxisAlignment:
                              //               MainAxisAlignment.center,
                              //           children: [
                              //             Padding(
                              //               padding: const EdgeInsets.all(16.0),
                              //               child: SvgPicture.asset(
                              //                 'assets/images/svgs/emoji_sad_missing.svg',
                              //               ),
                              //             ),
                              //             const Padding(
                              //               padding: EdgeInsets.all(16.0),
                              //               child: Text(
                              //                 'No hay profesores \n vinculados a este curso \n todavía',
                              //                 textAlign: TextAlign.center,
                              //                 style: TextStyle(
                              //                   color: Color.fromRGBO(
                              //                       191, 191, 191, 1.000),
                              //                   fontFamily: 'Gotham Rounded',
                              //                   fontSize: 24,
                              //                   height: 30 / 26,
                              //                   fontWeight: FontWeight.bold,
                              //                 ),
                              //               ),
                              //             ),
                              //             const Padding(
                              //               padding: EdgeInsets.all(16.0),
                              //               child: Text(
                              //                 'Puedes sugerirlos en el \n botón arriba a la\n derecha',
                              //                 textAlign: TextAlign.center,
                              //                 style: TextStyle(
                              //                   color: Color.fromRGBO(
                              //                       191, 191, 191, 1.000),
                              //                   fontFamily: 'Gotham Rounded',
                              //                   fontSize: 24,
                              //                   height: 30 / 26,
                              //                   fontWeight: FontWeight.bold,
                              //                 ),
                              //               ),
                              //             )
                              //           ],
                              //         ),
                              //       ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const _FilterButtons(),
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

class _FilterButtons extends ConsumerWidget {
  const _FilterButtons();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: IconFilter(
            assetName: 'star',
            isEnabled: true,
            label: 'MEJOR CALIFICACIÓN',
            onPressed: () {
              ref
                  .read(compareTeachersControllerProvider.notifier)
                  .orderByQualification();
            },
          ),
        ),
        Expanded(
          child: IconFilter(
            assetName: 'brain',
            isEnabled: true,
            label: '¿QUÉ TANTO APRENDISTE?',
            onPressed: () {
              ref
                  .read(compareTeachersControllerProvider.notifier)
                  .orderByLearnQualification();
            },
          ),
        ),
        Expanded(
          child: IconFilter(
            assetName: 'parchment',
            isEnabled: true,
            label: '¿QUÉ TAN ALTO CALIFICA?',
            onPressed: () {
              ref
                  .read(compareTeachersControllerProvider.notifier)
                  .orderByHighQualification();
            },
          ),
        ),
        Expanded(
          child: IconFilter(
            assetName: 'heart',
            isEnabled: true,
            label: '¿QUÉ TAN BUENA GENTE ES?',
            onPressed: () {
              ref
                  .read(compareTeachersControllerProvider.notifier)
                  .orderByGoodQualification();
            },
          ),
        ),
      ],
    );
  }
}
