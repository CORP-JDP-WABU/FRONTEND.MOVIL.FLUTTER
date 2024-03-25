import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/documents/documents.dart';

class DocumentOperationsDioDatasource
    extends DocumentOperationsRemoteDatasource {
  final dio = ApiClientToken.instance.operationClient.dio;

  @override
  Future<Either<Failure, CourseDocuments>> getCourseDocuments(
    String universityId,
    String courseId,
    String documentType,
    int skipe,
    String searchText,
  ) async {
    final response = await dio.get(
      'document/v1.0/university/$universityId/course/$courseId/$documentType/$skipe',
      queryParameters: {
        "search": searchText,
      },
    );

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getCourseDocumentsResponse = ResponseDto.fromJson(
      response.data,
      (json) => CourseDocuments.fromJson(json as Map<String, dynamic>),
    );

    return Right(getCourseDocumentsResponse.data);
  }
}
