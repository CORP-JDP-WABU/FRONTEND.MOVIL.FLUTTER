
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TinderViewRatingTeacher extends ConsumerWidget {
  const TinderViewRatingTeacher({super.key});

  static const String name = "tinder_view_rating_teacher";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        // backgroundColor: AppTheme.greyBackgroundColor,
        body: Center(
            child: Column(children: [ ]
            )
        )
    );
  }
}