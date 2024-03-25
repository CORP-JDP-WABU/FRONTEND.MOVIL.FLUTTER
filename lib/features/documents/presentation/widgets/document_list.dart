import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/documents/documents.dart';

class DocumentList extends ConsumerStatefulWidget {
  const DocumentList({
    super.key,
    required this.documents,
  });

  final List<Document> documents;

  @override
  ConsumerState<DocumentList> createState() => DocumentListState();
}

class DocumentListState extends ConsumerState<DocumentList> {
  late ScrollController controller;

  @override
  void initState() {
    super.initState();

    controller = ScrollController();

    controller.addListener(() {
      if (controller.position.pixels >= controller.position.maxScrollExtent) {
        ref.read(courseDocumentsControllerProvider.notifier).loadNextPage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      padding: const EdgeInsets.all(5.0),
      shrinkWrap: true,
      itemCount: widget.documents.length,
      itemBuilder: (context, index) {
        final document = widget.documents[index];

        return ListTile(
          title: Text(document.originalName),
          subtitle: Text(
              document.teacher.isNotEmpty ? document.teacher : 'no-teacher'),
        );

        // return const DocumentListContainer();
      },
    );
  }
}
