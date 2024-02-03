import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
import 'package:wabu/features/teachers/presentation/screens/smash_tab_main_screen.dart';
import 'package:wabu/features/teachers/presentation/screens/teacher_profile_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.childView,
  });

  static const String name = 'home_screen';
  static const String route = '/$name';

  final Widget childView;

  final viewRoutes = const <Widget>[
    TeacherProfileView(),
    SmashTabMainScreen(),
    SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childView,
      bottomNavigationBar: const _CustomNavigationBar(),
    );
  }
}

class _CustomNavigationBar extends StatelessWidget {
  const _CustomNavigationBar();

  int getCurrentIndex(BuildContext context) {
    final String location = GoRouterState.of(context).matchedLocation;

    switch (location) {
      case HomeView.route:
        return 0;
      case TeacherProfileView.route:
        return 1;
      case SmashTabMainScreen.route:
        return 2;
      default:
        return 0;
    }
  }

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(HomeView.route);
        break;
      case 1:
        context.go(TeacherProfileView.route);
        break;
      case 2:
        context.go(SmashTabMainScreen.route);
        break; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color.fromARGB(255, 247, 5, 214),
      showSelectedLabels: true,
      currentIndex: getCurrentIndex(context),
      onTap: (value) => onItemTapped(context, value),
      items:  [
        BottomNavigationBarItem(
          icon:  SvgPicture.asset('assets/images/svgs/Home.svg'),
          activeIcon: SvgPicture.asset('assets/images/svgs/Home.svg', color:const Color.fromARGB(255, 247, 5, 214) ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/svgs/Find.svg'),
          activeIcon: SvgPicture.asset('assets/images/svgs/Find.svg', color:const Color.fromARGB(255, 247, 5, 214) ),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/svgs/Smash.svg'),
          activeIcon: SvgPicture.asset('assets/images/svgs/Smash.svg', color:const Color.fromARGB(255, 247, 5, 214) ),
          label: 'Smash',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/svgs/Messages.svg'),
          activeIcon: SvgPicture.asset('assets/images/svgs/Messages.svg', color:const Color.fromARGB(255, 247, 5, 214) ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/svgs/Perfil.svg'),
          activeIcon: SvgPicture.asset('assets/images/svgs/Perfil.svg', color:const Color.fromARGB(255, 247, 5, 214) ),
          label: 'Perfil',
        ),
      ],
    );
  }
}
