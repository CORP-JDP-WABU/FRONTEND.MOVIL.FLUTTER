import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/documents/documents.dart';

abstract class DocumentOperationsRemoteDatasource {
  Future<Either<Failure, CourseDocuments>> getCourseDocuments(
    String universityId,
    String courseId,
    String documentType,
    int skipe,
    String searchText,
  );
}
