import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/compare/compare.dart';
import 'package:wabu/features/search/domain/teachers_search_result/teachers_search_result.dart';

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

class _CompareSearchContent extends ConsumerWidget {
  const _CompareSearchContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(compareSearchControllerProvider);

    return Column(
      children: [
        const SizedBox(height: 20),
        CustomBackButton(color: Colors.white, onTap: () => context.pop()),
        const SizedBox(height: 20),
        CustomSearchBar(
          onChanged: (value) => ref
              .read(compareSearchControllerProvider.notifier)
              .onSearchTextChanged(value),
          onSearch: () =>
              ref.read(compareSearchControllerProvider.notifier).search(),
          searchText: state.searchText,
        ),
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
    final selectedTeacherIds = state.selectedTeacherIds;
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
                if (selectedTeachersCount > 1)
                  CustomFilledButton(
                    text: 'Comparar',
                    textColor: Colors.white,
                    linearGradient: primaryButtonLinearGradient,
                    verticalPadding: 8,
                    onPressed: () {
                      ref
                          .read(compareSearchControllerProvider.notifier)
                          .search();
                    },
                  )
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: _CompareSearchTeachers(
                teachers: teachers,
                selectedTeacherIds: selectedTeacherIds,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CompareSearchTeachers extends ConsumerStatefulWidget {
  const _CompareSearchTeachers({
    super.key,
    required this.teachers,
    required this.selectedTeacherIds,
  });

  final List<TeachersSearchResult> teachers;
  final List<String> selectedTeacherIds;

  @override
  ConsumerState<_CompareSearchTeachers> createState() =>
      _CompareSearchTeachersState();
}

class _CompareSearchTeachersState
    extends ConsumerState<_CompareSearchTeachers> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent) {
        ref.read(compareSearchControllerProvider.notifier).loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      itemCount: widget.teachers.length,
      padding: const EdgeInsets.only(top: 12, right: 6),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 20,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        final teacher = widget.teachers[index];
        return CompareSearchResult(
          isSelected: widget.selectedTeacherIds.contains(teacher.idTeacher),
          teachersSearchResult: teacher,
        );
      },
    );
  }
}
