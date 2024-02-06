// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/custom_back_button.dart';
import 'package:wabu/common/widgets/swipe_detector.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:wabu/features/teachers/presentation/screens/card_view.dart';
import 'package:wabu/features/teachers/data/datasources/card_data.dart';
import 'package:wabu/features/teachers/presentation/screens/compare_teacher_%20main_screen.dart';

class TinderViewRatingTeacher extends StatefulWidget {
  static const String name = "tinder_view_rating_teacher";
  static const String route = "/$name";

  const TinderViewRatingTeacher({
    Key? key,
  }) : super(key: key);

  @override
  State<TinderViewRatingTeacher> createState() => _TinderViewRatingTeacher();
}

class _TinderViewRatingTeacher extends State<TinderViewRatingTeacher> {
  final CardSwiperController controller = CardSwiperController();

  final cards = candidates.map(CardView.new).toList();

  @override
  void initState() {
    super.initState();

    /* WidgetsBinding.instance!.addPostFrameCallback((_) {
        final size = MediaQuery.of(context).size;
        final provider =Provider.of<CardProvider>(context);
        provider.setScreenSize(size);
    });*/
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
             /* Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      onPressed: controller.undo,
                      child: const Icon(Icons.rotate_left),
                    ),
                    FloatingActionButton(
                      onPressed: () =>
                          controller.swipe(CardSwiperDirection.left),
                      child: const Icon(Icons.keyboard_arrow_left),
                    ),
                    FloatingActionButton(
                      onPressed: () =>
                          controller.swipe(CardSwiperDirection.right),
                      child: const Icon(Icons.keyboard_arrow_right),
                    ),
                    FloatingActionButton(
                      onPressed: () =>
                          controller.swipe(CardSwiperDirection.top),
                      child: const Icon(Icons.keyboard_arrow_up),
                    ),
                    FloatingActionButton(
                      onPressed: () =>
                          controller.swipe(CardSwiperDirection.bottom),
                      child: const Icon(Icons.keyboard_arrow_down),
                    ),
                  ],
                ),
              ),*/
              

              /*  currentCardIndex < cardDataList.length
              ? SwipeDetector(
                  onSwipeLeft: () {
                    // Mostrar el siguiente card al deslizar hacia la izquierda
                    setState(() {
                      currentCardIndex =
                          (currentCardIndex + 1) % cardDataList.length;
                    });
                  },
                  onSwipeRight: () {
                    // Redirigir a otra pantalla al deslizar hacia la derecha
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            CompareTeacherMainScreen(),
                      ),
                    );
                  },
                child: 
                Card(
                color: Colors.white,
                elevation: 4.0,
                child: Container(
                  width: size.width * 0.9, // Ancho fijo del card
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        //'assets/images/svgs/person.svg',
                         cardDataList[currentCardIndex].imageAsset,
                        width: 308,
                        height: 333,
                      ),
                      SizedBox(height: 10),
                      Text(
                        // 'Pardo Robles',
                        cardDataList[currentCardIndex].apellido,
                        style: TextStyle(
                          color: Color.fromRGBO(2, 51, 106, 1.000),
                          fontFamily: 'SFProDisplay',
                          fontSize: 20,
                          height: 31 / 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        //'Liliana Maria',
                         cardDataList[currentCardIndex].nombre,
                        style: TextStyle(
                          color: Color.fromRGBO(2, 51, 106, 1.000),
                          fontFamily: 'SFProDisplay',
                          fontSize: 20,
                          height: 31 / 23,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          cardDataList[currentCardIndex].curso,
                          style: TextStyle(
                            color: Color.fromRGBO(2, 51, 106, 1.000),
                            fontFamily: 'SFProDisplay',
                            fontSize: 17,
                            height: 31 / 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
                )
              : Center(
                  child: Text(
                    'No hay más profesores por hoy',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),


*/
                   
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
                     context.pushNamed(CompareTeacherMainScreen.name);
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

  /*Widget buildFrontCard() =>GestureDetector(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final provider =Provider.of<CardProvider>(context);
          final position = provider.position;
          final miliseconds = provider.isDragging? 0 : 400;

          final center = constraints.smallest.center(Offset.zero);
          final angle = provider.angle *pi/180;
          final rotatedMatrix = Matrix4.identity()
          ..translate(center.dx, center.dy)
          ..rotateZ(angle)
          ..translate(-center.dx, -center.dy);
          return AnimatedContainer(
            curve: Curves.easeInOut,
            duration: Duration(milliseconds: miliseconds),
            transform: rotatedMatrix
              ..translate(position.dx, position.dy),
          child:  Card(),);
      }
      ),
      
    
    onPanStart: (details) {
      final provider = Provider.of<CardProvider>(context,); 
      provider.startPosition(details);
    },
    onPanUpdate: (details) {
      final provider = Provider.of<CardProvider>(context,); 
      provider.updatePosition(details);
    },

    onPanEnd:(details) {
      final provider = Provider.of<CardProvider>(context,);
      provider.endPosition(); 
    },
  );*/
}


// clase temporal reemplazar por la que traiga la data
