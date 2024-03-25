import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/constants.dart';
import 'package:wabu/features/documents/documents.dart';
import 'package:wabu/utils/utils.dart';

part 'course_documents_controller.g.dart';

@riverpod
class CourseDocumentsController extends _$CourseDocumentsController {
  @override
  CourseDocumentsState build() => const CourseDocumentsState();

  bool hasFetchedAllDocuments() =>
      state.courseDocuments.totalDocs == state.courseDocuments.documents.length;

  void onSearchTextChanged(String searchText) {
    state = state.copyWith(
      searchText: searchText,
    );
  }

  Future<void> fetchData(String courseId, String documentType) async {
    try {
      state = state.copyWith(
        courseId: courseId,
        documentType: documentType,
        courseDocumentsStatus: CourseDocumentsStatus.loading,
      );

      final universityId = Globals.universityId ?? '';

      final response = await ref
          .watch(documentOperationsRepositoryProvider)
          .getCourseDocuments(
              universityId, courseId, documentType, 1, state.searchText);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              courseDocumentsStatus: CourseDocumentsStatus.error,
            );
            break;
        }
      }, (CourseDocuments courseDocuments) {
        state = state.copyWith(
          courseDocuments: courseDocuments,
          courseDocumentsStatus: CourseDocumentsStatus.loaded,
          pageIndex: 1,
        );
      });
    } catch (e) {
      logger.e(e);
      state = state.copyWith(
        courseDocumentsStatus: CourseDocumentsStatus.error,
      );
    }
  }

  Future<void> loadNextPage() async {
    try {
      if (hasFetchedAllDocuments()) return;

      state = state.copyWith(
        courseDocumentsStatus: CourseDocumentsStatus.loading,
      );

      final universityId = Globals.universityId ?? '';

      final response = await ref
          .watch(documentOperationsRepositoryProvider)
          .getCourseDocuments(universityId, state.courseId, state.documentType,
              state.pageIndex + 1, state.searchText);

      response.fold((Failure failure) {
        switch (failure.errorCode) {
          default:
            state = state.copyWith(
              courseDocumentsStatus: CourseDocumentsStatus.error,
            );
            break;
        }
      }, (CourseDocuments courseDocuments) {
        final documents = state.courseDocuments.documents.toList();
        documents.addAll(courseDocuments.documents);

        state = state.copyWith(
          courseDocuments: state.courseDocuments.copyWith(
            documents: documents,
          ),
          courseDocumentsStatus: CourseDocumentsStatus.loaded,
          pageIndex: state.pageIndex + 1,
        );
      });
    } catch (e) {
      logger.e(e);
      state = state.copyWith(
        courseDocumentsStatus: CourseDocumentsStatus.error,
      );
    }
  }

  void setPageIdle() {
    state = state.copyWith(
      courseDocumentsStatus: CourseDocumentsStatus.idle,
    );
  }
}
