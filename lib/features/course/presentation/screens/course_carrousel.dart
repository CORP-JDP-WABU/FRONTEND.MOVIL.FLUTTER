import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/course/presentation/controllers/controllers.dart';
import 'package:wabu/features/course/presentation/widgets/card_view_carrousel.dart';

class CourseCarrousel extends ConsumerStatefulWidget {
  const CourseCarrousel({
    super.key,
    required this.courseId,
  });

  static const String name = "course_teachers_carrousel";
  static const String route = "/$name";
  final String courseId;

  @override
  ConsumerState<CourseCarrousel> createState() => _CourseCarrousel();
}

class _CourseCarrousel extends ConsumerState<CourseCarrousel> {
  final CardSwiperController controller = CardSwiperController();
  var isSelected = false;

  @override
  void initState() {
    super.initState();
    ref
        .read(courseTeachersControllerProvider.notifier)
        .fetchData(widget.courseId);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(courseTeachersControllerProvider);
    final course = state.courseTeachersResponse.course;
    final teachers = state.courseTeachersResponse.teachers ?? [];

    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(54, 181, 236, 1.000),
              Color.fromRGBO(47, 163, 240, 1.000),
              Color.fromRGBO(38, 137, 245, 1.000),
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
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  course?.name ?? '',
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'SFProDisplay',
                    fontSize: 17,
                    height: 31 / 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              teachers.isNotEmpty
                  ? SizedBox(
                      height: 700,
                      width: double.infinity,
                      child: CardSwiper(
                        controller: controller,
                        cardsCount: teachers.length,
                        numberOfCardsDisplayed: 2,
                        backCardOffset: const Offset(40, 40),
                        padding: const EdgeInsets.all(4.0),
                        cardBuilder: (
                          _,
                          index,
                          __,
                          ___,
                        ) {
                          return CardViewCarrousel(
                            courseTeacher: teachers[index],
                            courseId: widget.courseId,
                          );
                        },
                      ),
                    )
                  : Center(
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
                                color: Color.fromRGBO(191, 191, 191, 1.000),
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
                                color: Color.fromRGBO(191, 191, 191, 1.000),
                                fontFamily: 'Gotham Rounded',
                                fontSize: 24,
                                height: 30 / 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCircularButton(
                    'star',
                    () {
                      ref
                          .read(courseTeachersControllerProvider.notifier)
                          .orderByQualification();
                    },
                  ),
                  _buildCircularButton(
                    'brain',
                    () {
                      ref
                          .read(courseTeachersControllerProvider.notifier)
                          .orderByLearnQualification();
                    },
                  ),
                  _buildCircularButton(
                    'parchment',
                    () {
                      ref
                          .read(courseTeachersControllerProvider.notifier)
                          .orderByHighQualification();
                    },
                  ),
                  _buildCircularButton(
                    'heart',
                    () {
                      ref
                          .read(courseTeachersControllerProvider.notifier)
                          .orderByGoodQualification();
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildDescriptionText("Mejor calificación"),
                  _buildDescriptionText("¿Qué tanto aprendiste?"),
                  _buildDescriptionText("¿Qué tan alto califica?"),
                  _buildDescriptionText("¿Qué tan buena gente es?"),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }

  Widget _buildCircularButton(String? asset, Function() onTap) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isSelected = true;
          onTap();
        });
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        elevation: 4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SvgPicture.asset(
          'assets/images/svgs/$asset.svg',
          color: isSelected
              ? const Color.fromRGBO(255, 195, 42, 1.000)
              : const Color.fromRGBO(191, 191, 191, 1.000),
        ),
      ),
    );
  }

  Widget _buildDescriptionText(String text) {
    return SizedBox(
      width: 100,
      child: Text(
        text,
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
