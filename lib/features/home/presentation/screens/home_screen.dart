import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
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
        context.push(TeacherProfileView.route);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: getCurrentIndex(context),
      onTap: (value) => onItemTapped(context, value),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Smash',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Perfil',
        ),
      ],
    );
  }
}
