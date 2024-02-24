import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/compare/presentation/presentation.dart';

class CompareSearchScreen extends StatelessWidget {
  const CompareSearchScreen({super.key});

  static const String name = 'compare_search';
  static const String route = '/$name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: tinderLinearGradient,
            ),
          ),
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: _CompareSearchContent(),
            ),
          )
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
        CustomBackButton(
          color: Colors.white,
          onTap: () => context.pop(),
        ),
        const SizedBox(height: 20),
        const CustomSearchBar(),
        const SizedBox(height: 16),
        const Expanded(child: _CompareSearchResults()),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _CompareSearchResults extends StatelessWidget {
  const _CompareSearchResults();

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '3 profesores seleccionados',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CustomFilledButton(
                  text: 'Comparar',
                  textColor: Colors.white,
                  linearGradient: primaryButtonLinearGradient,
                  verticalPadding: 8,
                )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(
                  top: 12,
                  right: 6,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 20,
                ),
                itemCount: 15,
                itemBuilder: (context, index) {
                  print(index);
                  return const CompareSearchResult();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
