import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/course/course.dart';
import 'package:wabu/features/home/presentation/presentation.dart';
import 'package:wabu/features/search/presentation/views/search_view.dart';
import 'package:wabu/features/smash/presentation/views/smash_view.dart';
import 'package:wabu/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.childView,
  });

  static const String name = 'home_screen';
  static const String route = '/$name';
  final Widget childView;

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
      case CourseProfileView.route:
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
        FirebaseAnalyticsHandler.instance.logSelectContent(
          contentType: AnalyticsContentType.button.contentType,
          itemId: AnalyticsContentItemId.homeNavigation.itemId,
        );
        context.go(HomeView.route);
        break;
      case 1:
        FirebaseAnalyticsHandler.instance.logSelectContent(
          contentType: AnalyticsContentType.button.contentType,
          itemId: AnalyticsContentItemId.searchNavigation.itemId,
        );
        context.go(CourseProfileView.route);
        break;
      case 2:
        FirebaseAnalyticsHandler.instance.logSelectContent(
          contentType: AnalyticsContentType.button.contentType,
          itemId: AnalyticsContentItemId.smashCard.itemId,
        );
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
        /* BottomNavigationBarItem(
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
        ),*/
      ],
    );
  }
}
