import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/course/presentation/controllers/controllers.dart';
import 'package:wabu/features/course/presentation/widgets/card_view_carrousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
  String? selectedAsset;
  int activeIndex = 0;

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

    double screenHeigth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: ProfileClipper(),
                      child: Container(
                          height: 400,
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
                          child: Container()),
                    ),
                    Column(
                      children: [
                        SafeArea(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 16,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomBackButton(
                                color: Colors.white,
                                onTap: () => context.pop(),
                              ),
                              const SizedBox(height: 16),
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
                              LayoutBuilder(builder: (context, constraints) {
                                return Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      teachers.isNotEmpty
                                          ? CarouselSlider.builder(
                                              itemCount: teachers.length,
                                              itemBuilder:
                                                  (context, index, realIndex) {
                                                return CardViewCarrousel(
                                                  courseTeacher:
                                                      teachers[index],
                                                  courseId: widget.courseId,
                                                );
                                              },
                                              options: CarouselOptions(
                                                clipBehavior: Clip.none,
                                                height: screenHeigth * 1.2,
                                                reverse: true,
                                                onPageChanged: (index,
                                                        reason) =>
                                                    setState(() =>
                                                        activeIndex = index),
                                              ))
                                          : Center(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/svgs/emoji_sad_missing.svg',
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Text(
                                                      'No hay profesores \n vinculados a este curso \n todavía',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            191,
                                                            191,
                                                            191,
                                                            1.000),
                                                        fontFamily:
                                                            'Gotham Rounded',
                                                        fontSize: 24,
                                                        height: 30 / 26,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding:
                                                        EdgeInsets.all(16.0),
                                                    child: Text(
                                                      'Puedes sugerirlos en el \n botón arriba a la\n derecha',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            191,
                                                            191,
                                                            191,
                                                            1.000),
                                                        fontFamily:
                                                            'Gotham Rounded',
                                                        fontSize: 24,
                                                        height: 30 / 26,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                    ],
                                  ),
                                );
                              }),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildCircularButton(
                                    'star',
                                    AppTheme.starColor,
                                    () {
                                      ref
                                          .read(courseTeachersControllerProvider
                                              .notifier)
                                          .orderByQualification();
                                    },
                                  ),
                                  _buildCircularButton(
                                    'brain',
                                    const Color.fromRGBO(78, 162, 255, 1.000),
                                    () {
                                      ref
                                          .read(courseTeachersControllerProvider
                                              .notifier)
                                          .orderByLearnQualification();
                                    },
                                  ),
                                  _buildCircularButton(
                                    'parchment',
                                    const Color.fromRGBO(72, 194, 230, 1.000),
                                    () {
                                      ref
                                          .read(courseTeachersControllerProvider
                                              .notifier)
                                          .orderByHighQualification();
                                    },
                                  ),
                                  _buildCircularButton(
                                    'heart',
                                    const Color.fromRGBO(68, 217, 211, 1.000),
                                    () {
                                      ref
                                          .read(courseTeachersControllerProvider
                                              .notifier)
                                          .orderByGoodQualification();
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  _buildDescriptionText("Mejor calificación"),
                                  _buildDescriptionText(
                                      "¿Qué tanto aprendiste?"),
                                  _buildDescriptionText(
                                      "¿Qué tan alto califica?"),
                                  _buildDescriptionText(
                                      "¿Qué tan buena gente es?"),
                                ],
                              ),
                            ],
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

      /*  body: Container(
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
        child: 
      ),*/
    );
  }

  Widget buildIndicator(teachers) => AnimatedSmoothIndicator(
        activeIndex: activeIndex >= teachers.length ? 0 : activeIndex,
        count: teachers.length > 5 ? 5 : teachers.length,
        effect: const SlideEffect(
            dotWidth: 15,
            dotHeight: 15,
            dotColor: Colors.black12,
            activeDotColor: AppTheme.starColor),
      );

  Widget _buildCircularButton(String? asset, Color color, Function() onTap) {
    return Consumer(
      builder: (context, ref, _) {
        bool isSelected = asset == selectedAsset;

        return ElevatedButton(
          onPressed: () {
            setState(() {
              selectedAsset = asset;
            });
            onTap();
          },
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            elevation: 4,
            backgroundColor: isSelected ? color : Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/images/svgs/$asset.svg',
              color: isSelected ? Colors.white : null,
            ),
          ),
        );
      },
    );
  }

  Widget _buildDescriptionText(String text) {
    return SizedBox(
      width: 90,
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromRGBO(191, 191, 191, 1.000),
          fontFamily: 'Gotham Rounded',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
