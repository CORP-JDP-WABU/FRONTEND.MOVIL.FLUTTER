import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/compare/compare.dart';

class CompareSearchScreen extends ConsumerWidget {
  const CompareSearchScreen({super.key});

  static const String name = 'compare_search';
  static const String route = '/$name';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchStatus =
        ref.watch(compareSearchControllerProvider).searchStatus;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(gradient: tinderLinearGradient),
          ),
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: _CompareSearchContent(),
            ),
          ),
          if (searchStatus == SearchStatus.loading) const LoaderTransparent(),
        ],
      ),
    );
  }
}

class _CompareSearchContent extends StatelessWidget {
  const _CompareSearchContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        CustomBackButton(color: Colors.white, onTap: () => context.pop()),
        const SizedBox(height: 20),
        const CustomSearchBar(),
        const SizedBox(height: 16),
        const Expanded(child: _CompareSearchResults()),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _CompareSearchResults extends ConsumerWidget {
  const _CompareSearchResults();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(compareSearchControllerProvider);
    final selectedTeachersCount = state.selectedTeacherIds.length;
    final teachers = state.searchResult.teacher ?? [];

    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$selectedTeachersCount ${selectedTeachersCount == 1 ? 'profesor seleccionado' : 'profesores seleccionados'}',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // if (selectedCount > 1)
                CustomFilledButton(
                  text: 'Comparar',
                  textColor: Colors.white,
                  linearGradient: primaryButtonLinearGradient,
                  verticalPadding: 8,
                  onPressed: () {
                    ref.read(compareSearchControllerProvider.notifier).search();
                  },
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: teachers.length,
                padding: const EdgeInsets.only(top: 12, right: 6),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final teacher = teachers[index];
                  return CompareSearchResult(
                    teachersSearchResult: teacher,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
