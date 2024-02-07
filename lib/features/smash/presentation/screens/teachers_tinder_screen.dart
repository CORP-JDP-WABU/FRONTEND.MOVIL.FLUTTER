import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:wabu/features/compare/presentation/screens/compare_teachers_screen.dart';
import 'package:wabu/features/smash/presentation/widgets/card_view.dart';
import 'package:wabu/features/smash/presentation/controllers/card_data.dart';

class TeachersTinderScreen extends StatefulWidget {
  static const String name = "teachers_tinder";
  static const String route = "/$name";

  const TeachersTinderScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TeachersTinderScreen> createState() => _TeachersTinderScreen();
}

class _TeachersTinderScreen extends State<TeachersTinderScreen> {
  final CardSwiperController controller = CardSwiperController();

  final cards = candidates.map(CardView.new).toList();

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
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
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
              SizedBox(height: 50),
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
              const SizedBox(height: 25),
              SizedBox(
                height: 550,
                child: CardSwiper(
                  controller: controller,
                  cardsCount: cards.length,
                  onSwipe: _onSwipe,
                  onUndo: _onUndo,
                  numberOfCardsDisplayed: 3,
                  backCardOffset: const Offset(40, 40),
                  padding: const EdgeInsets.all(24.0),
                  cardBuilder: (
                    context,
                    index,
                    horizontalThresholdPercentage,
                    verticalThresholdPercentage,
                  ) =>
                      cards[index],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: SvgPicture.asset('assets/images/svgs/X.svg'),
                    onPressed: () {
                      // Acciones al presionar el botón de X

                      controller.swipe(CardSwiperDirection.left);
                    },
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/svgs/Smash Blue.svg',
                    ),
                    onPressed: () {
                      controller.swipe(CardSwiperDirection.right);
                      context.pushNamed(CompareTeachersScreen.name);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }
}
