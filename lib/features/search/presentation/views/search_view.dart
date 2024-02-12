import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/search/presentation/presentation.dart';

class SearchView extends ConsumerWidget {
  const SearchView({super.key});

  static const String name = "search_view";
  static const String route = "/$name";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController controller = TextEditingController();

    final state = ref.watch(searchControllerProvider);
    final dashboard = state.homeDashboard;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.searchStatus == SearchStatus.error) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Ocurrión un problema. Vuelve a intentarlo más tarde.'),
          ),
        );
      }
    });

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(54, 181, 236, 1.000),
                Color.fromRGBO(47, 163, 240, 1.000),
                Color.fromRGBO(38, 137, 245, 1.000),
              ],
              begin: Alignment.topRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        SearchViewContent(
          controller: controller,
          dashboard: dashboard,
        ),
        if (state.searchStatus == SearchStatus.loading)
          const LoaderTransparent(),
      ],
    );
  }
}
