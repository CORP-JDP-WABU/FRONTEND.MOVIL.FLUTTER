import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/compare/presentation/screens/compare_teachers_screen.dart';
import 'package:wabu/features/smash/presentation/screens/teachers_tinder_screen.dart';

class SmashView extends ConsumerWidget {
  const SmashView({super.key});

  static const String name = "smash";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _SmashCard(
              onTap: () => context.push(TeachersTinderScreen.route),
              color: AppTheme.smashButtonBackgroundColor,
              asset: 'assets/images/svgs/smash.svg',
              text: 'SMASH',
            ),
            _SmashCard(
              onTap: () => context.push(CompareTeachersScreen.route),
              color: AppTheme.compareButtonBackgroundColor,
              asset: 'assets/images/svgs/compare.svg',
              text: 'COMPARAR',
            ),
          ],
        ),
      ),
    );
  }
}

class _SmashCard extends StatelessWidget {
  const _SmashCard({
    required this.color,
    required this.asset,
    required this.text,
    this.onTap,
  });

  final Function()? onTap;
  final Color color;
  final String asset;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Card(
          margin: EdgeInsets.zero,
          child: Container(
            width: double.infinity,
            color: color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  asset,
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 10),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'GothamRounded',
                    fontSize: 20,
                    height: 48 / 20,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
