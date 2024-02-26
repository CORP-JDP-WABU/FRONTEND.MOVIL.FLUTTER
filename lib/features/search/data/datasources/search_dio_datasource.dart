import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/search/data/data.dart';
import 'package:wabu/features/search/domain/domain.dart';

class SearchDioDatasource extends SearchRemoteDatasource {
  final dio = ApiClientToken.instance.universityClient.dio;

  @override
  Future<Either<Failure, SearchResult>> getSearchResults(
      String universityId, int skipe, String searchText) async {
    final response = await dio.get(
      'university/v1.0/$universityId/course/teacher/$skipe',
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
