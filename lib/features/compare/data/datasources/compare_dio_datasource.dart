import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/compare/compare.dart';

class CompareDioDatasource extends CompareRemoteDatasource {
  final dio = ApiClientToken.instance.universityClient.dio;

  @override
  Future<Either<Failure, SearchResult>> getSearchResults(
      String universityId, int skipe, String searchText) async {
    final response = await dio.get(
      'teacher/v1.0/university/$universityId/$skipe',
      queryParameters: {
        "search": searchText,
      },
    );

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getSearchResultResponse = ResponseDto.fromJson(
      response.data,
      (json) => SearchResult.fromJson(json as Map<String, dynamic>),
    );

    return Right(getSearchResultResponse.data);
  }
  
  @override
  Future<Either<Failure, List<CompareTeacher>>> compareTeachers(String universityId, List<String> teacherIds) async {
    final response = await dio.post(
      'teacher/v1.0/university/$universityId/compare',
      data: {
        "idTeachers": teacherIds,
      },
    );

    if (response.statusCode != 201) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final compareTeachersResponse = ResponseDto.fromJson(
      response.data,
      (jsons) => CompareTeacher.compareTeachersFromJson(jsons as List),
    );

    return Right(compareTeachersResponse.data);
  }
}
