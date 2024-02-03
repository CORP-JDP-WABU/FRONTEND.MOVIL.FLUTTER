import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CompareTeachersScreen extends ConsumerWidget {
  const CompareTeachersScreen({super.key});

  static const String name = "compare_teachers";
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
