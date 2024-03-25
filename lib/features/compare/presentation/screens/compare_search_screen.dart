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
    final state = ref.watch(compareSearchControllerProvider);
    final searchStatus = state.searchStatus;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (searchStatus == SearchStatus.initial && state.searchText.isEmpty) {
        ref.read(compareSearchControllerProvider.notifier).search();
        return;
      }

      if (searchStatus == SearchStatus.error) {
        ref.read(compareSearchControllerProvider.notifier).setPageIdle();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrió un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
        return;
      }
    });

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
          if (searchStatus == SearchStatus.initial ||
              searchStatus == SearchStatus.loading)
            const LoaderTransparent(),
        ],
      ),
    );
  }
}

class _CompareSearchContent extends ConsumerWidget {
  const _CompareSearchContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(compareSearchControllerProvider);

    return Column(
      children: [
        const SizedBox(height: 20),
        CustomBackButton(
          color: Colors.white,
          onTap: () => context.pop(),
        ),
        const SizedBox(height: 20),
        CustomSearchBar(
          onChanged: (value) => ref
              .read(compareSearchControllerProvider.notifier)
              .onSearchTextChanged(value),
          onSearch: () =>
              ref.read(compareSearchControllerProvider.notifier).search(),
          hintText: 'Busca un profesor o curso',
          searchText: state.searchText,
        ),
        const SizedBox(height: 16),
        const Expanded(child: CompareSearchResults()),
        const SizedBox(height: 20),
      ],
    );
  }
}
