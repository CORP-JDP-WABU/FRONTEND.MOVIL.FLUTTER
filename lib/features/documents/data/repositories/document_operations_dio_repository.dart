import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/documents/documents.dart';

class DocumentOperationsDioRepository extends DocumentOperationsRepository {
  DocumentOperationsDioRepository({
    required this.documentOperationsRemoteDatasource,
  });

  final DocumentOperationsRemoteDatasource documentOperationsRemoteDatasource;

  @override
  Future<Either<Failure, CourseDocuments>> getCourseDocuments(
      String universityId,
      String courseId,
      String documentType,
      int skipe,
      String searchText) {
    return documentOperationsRemoteDatasource.getCourseDocuments(
        universityId, courseId, documentType, skipe, searchText);
  }
}
