import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/documents/documents.dart';

class CourseDocumentsView extends ConsumerWidget {
  const CourseDocumentsView({
    super.key,
    required this.courseDocumentsParameters,
  });

  static const String name = 'course_documents';
  static const String route = name;
  final CourseDocumentsParameters courseDocumentsParameters;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final courseId = courseDocumentsParameters.courseId;
    final documentType = courseDocumentsParameters.documentType;
    final state = ref.watch(courseDocumentsControllerProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.courseDocumentsStatus == CourseDocumentsStatus.initial) {
        ref
            .read(courseDocumentsControllerProvider.notifier)
            .fetchData(courseId, documentType);
        return;
      }

      if (state.courseDocumentsStatus == CourseDocumentsStatus.error) {
        ref.read(courseDocumentsControllerProvider.notifier).setPageIdle();
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
          SingleChildScrollView(
            child: Column(
              children: [
                _DocumentListHeader(
                  courseId: courseId,
                  documentType: documentType,
                  searchText: state.searchText,
                ),
                const _DocumentListBody(),
              ],
            ),
          ),
          if (state.courseDocumentsStatus == CourseDocumentsStatus.initial ||
              state.courseDocumentsStatus == CourseDocumentsStatus.loading)
            const LoaderTransparent(),
        ],
      ),
    );
  }
}

class _DocumentListHeader extends ConsumerWidget {
  const _DocumentListHeader({
    required this.courseId,
    required this.documentType,
    required this.searchText,
  });

  final String courseId;
  final String documentType;
  final String searchText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: primaryLinearGradient,
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  CustomBackButton(
                    color: Colors.white,
                    onTap: () => context.pop(),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Resúmenes",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'GothamRounded',
                      height: 24 / 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomSearchBar(
                    onChanged: (value) => ref
                        .read(courseDocumentsControllerProvider.notifier)
                        .onSearchTextChanged(value),
                    onSearch: () => ref
                        .read(courseDocumentsControllerProvider.notifier)
                        .fetchData(courseId, documentType),
                    hintText: 'Busca a tu profesor para el curso',
                    searchText: searchText,
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DocumentListBody extends ConsumerWidget {
  const _DocumentListBody();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final documents =
        ref.watch(courseDocumentsControllerProvider).courseDocuments.documents;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          DocumentListFilterSection(),
          SizedBox(height: 12),
          DocumentList(documents: documents),
        ],
      ),
    );
  }
}
