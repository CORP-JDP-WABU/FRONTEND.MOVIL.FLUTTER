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
      (jsons) => SearchResult.fromJson(jsons as Map<String, dynamic>),
    );

    return Right(getSearchResultResponse.data);
  }
}
