import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/config/theme/app_theme.dart';
import 'package:wabu/features/compare/presentation/presentation.dart';
import 'package:wabu/features/smash/presentation/presentation.dart';
import 'package:wabu/utils/firebase_analytics/firebase_analytics_events.dart';
import 'package:wabu/utils/firebase_analytics/firebase_analytics_handler.dart';

class SmashView extends ConsumerWidget {
  const SmashView({super.key});

  static const String name = "smash";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        _SmashCard(
          onTap: () {
            FirebaseAnalyticsHandler.instance.logSelectContent(
              contentType: AnalyticsContentType.card.contentType,
              itemId: AnalyticsContentItemId.smashCard.itemId,
            );
            context.pushNamed(TeachersTinderScreen.name);
          },
          color: AppTheme.smashButtonBackgroundColor,
          asset: 'assets/images/svgs/smash.svg',
          text: 'SMASH',
        ),
        _SmashCard(
          onTap: () {
            FirebaseAnalyticsHandler.instance.logSelectContent(
              contentType: AnalyticsContentType.card.contentType,
              itemId: AnalyticsContentItemId.compareCard.itemId,
            );
            context.pushNamed(CompareWelcomeScreen.name);
          },
          color: AppTheme.compareButtonBackgroundColor,
          asset: 'assets/images/svgs/compare.svg',
          text: 'COMPARAR',
        ),
      ],
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
            child: _CardContent(
              asset: asset,
              text: text,
            ),
          ),
        ),
      ),
    );
  }
}

class _CardContent extends StatelessWidget {
  const _CardContent({
    required this.asset,
    required this.text,
  });

  final String asset;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
