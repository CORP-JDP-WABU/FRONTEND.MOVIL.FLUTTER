import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TeachersTinderScreen extends ConsumerWidget {
  const TeachersTinderScreen({super.key});

  static const String name = "teachers_tinder";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Center(
        child: Text(name),
      ),
    );
  }
}
