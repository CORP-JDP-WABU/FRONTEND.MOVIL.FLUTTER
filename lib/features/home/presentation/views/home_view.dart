import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String name = "home_view";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Home View'),
    );
  }
}
