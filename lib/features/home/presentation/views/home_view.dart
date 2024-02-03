import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/loader_transparent.dart';
import 'package:wabu/features/home/presentation/controllers/home_view_controller.dart';
import 'package:wabu/features/home/presentation/controllers/home_view_state.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  static const String name = "home_view";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewControllerProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const Center(
            child: Text('Home View'),
          ),
          if (state.pageStatus == HomeViewStatus.loading)
            const LoaderTransparent(),
        ],
      ),
    );
  }
}
