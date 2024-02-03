import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/home/presentation/views/home_view.dart';
import 'package:wabu/features/home/presentation/views/smash_view.dart';
import 'package:wabu/features/teachers/presentation/screens/teacher_profile_view.dart';
import 'package:wabu/features/teachers/presentation/views/teacher_course_profile_view.dart';

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
    SmashView(),
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
      case SmashView.route:
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
        context.go(SmashView.route);
        break;
      default:
        context.go(HomeView.route);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppTheme.bottomNavigationIconColor,
      showSelectedLabels: true,
      currentIndex: getCurrentIndex(context),
      onTap: (value) => onItemTapped(context, value),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/svgs/home_bottom_bar.svg'),
          activeIcon: SvgPicture.asset(
            'assets/images/svgs/home_bottom_bar.svg',
            colorFilter: const ColorFilter.mode(
              AppTheme.bottomNavigationIconColor,
              BlendMode.srcIn,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/svgs/find.svg'),
          activeIcon: SvgPicture.asset(
            'assets/images/svgs/find.svg',
            colorFilter: const ColorFilter.mode(
              AppTheme.bottomNavigationIconColor,
              BlendMode.srcIn,
            ),
          ),
          label: 'Buscar',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/svgs/smash_bottom_bar.svg'),
          activeIcon: SvgPicture.asset(
            'assets/images/svgs/smash_bottom_bar.svg',
            colorFilter: const ColorFilter.mode(
              AppTheme.bottomNavigationIconColor,
              BlendMode.srcIn,
            ),
          ),
          label: 'Smash',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/svgs/chat_bottom_bar.svg'),
          activeIcon: SvgPicture.asset(
            'assets/images/svgs/chat_bottom_bar.svg',
            colorFilter: const ColorFilter.mode(
              AppTheme.bottomNavigationIconColor,
              BlendMode.srcIn,
            ),
          ),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/svgs/profile_bottom_bar.svg'),
          activeIcon: SvgPicture.asset(
            'assets/images/svgs/profile_bottom_bar.svg',
            colorFilter: const ColorFilter.mode(
              AppTheme.bottomNavigationIconColor,
              BlendMode.srcIn,
            ),
          ),
          label: 'Perfil',
        ),
      ],
    );
  }
}
