import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wabu/common/widgets/widgets.dart';
import 'package:wabu/features/course/course.dart';
import 'package:wabu/features/course/presentation/screens/document_list.dart';
import 'package:wabu/features/course/presentation/screens/document_list_filter_section.dart';
import 'package:wabu/features/course/presentation/screens/document_list_search.dart';

class DocumentListScreen extends StatelessWidget {
  static const String name = 'document_list_screen';
  static const String route = '/$name';

  const DocumentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DocumentListHeader(),
            _DocumentListBody(),
          ],
        ),
      ),
    );
  }
}

class DocumentListHeader extends StatelessWidget {
  const DocumentListHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
        decoration: const BoxDecoration(
          gradient: primaryButtonLinearGradient,
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
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: DocumentListSearch(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DocumentListBody extends StatelessWidget {
  const _DocumentListBody();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        children: [
          DocumentListFilterSection(),
          SizedBox(height: 12),
          DocumentList(),
        ],
      ),
    );
  }
}
