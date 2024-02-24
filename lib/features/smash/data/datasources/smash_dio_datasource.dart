import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';

class SmashDioDatasource extends SmashRemoteDatasource {
  final dio = ApiClientToken.instance.universityClient.dio;

  @override
  Future<Either<Failure, List<SmashSuggestion>>> getSmashSuggestions(
      String careerId) async {
    final response = await dio.get('teacher/v1.0/career/$careerId');

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getSmashSuggestionsResponse = ResponseDto.fromJson(response.data,
        (jsons) => SmashSuggestion.smashSuggestionsFromJson(jsons as List));

    return Right(getSmashSuggestionsResponse.data);
  }
}
