import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/compare/compare.dart';

class CompareSearchResults extends ConsumerWidget {
  const CompareSearchResults({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(compareSearchControllerProvider);
    final selectedTeacherIds = state.selectedTeacherIds;
    final selectedTeachersCount = selectedTeacherIds.length;

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
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      '$selectedTeachersCount ${selectedTeachersCount == 1 ? 'profesor seleccionado' : 'profesores seleccionados'}',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                if (selectedTeachersCount > 1) ...[
                  const SizedBox(width: 8),
                  CustomFilledButton(
                    text: 'Comparar',
                    textColor: Colors.white,
                    linearGradient: primaryButtonLinearGradient,
                    verticalPadding: 4,
                    onPressed: () {
                      context.pushNamed(
                        CompareTeachers.name,
                        extra: selectedTeacherIds,
                      );
                    },
                  ),
                ]
              ],
            ),
            const SizedBox(height: 8),
            const Expanded(
              child: _CompareSearchTeachers(),
            ),
          ],
        ),
      ),
    );
  }
}

class _CompareSearchTeachers extends ConsumerStatefulWidget {
  const _CompareSearchTeachers();

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
    final state = ref.watch(compareSearchControllerProvider);
    final selectedTeacherIds = state.selectedTeacherIds;
    final teachers = state.searchResult.teacher ?? [];

    return GridView.builder(
      controller: scrollController,
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
        return CompareSearchTeacher(
          isSelected: selectedTeacherIds.contains(teacher.idTeacher),
          teachersSearchResult: teacher,
        );
      },
    );
  }
}
