import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/utils/logger.dart';

class SmashDioDatasource extends SmashRemoteDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://52.91.65.217:4002/api/teacher/v1.0/',
    ),
  )..interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          if (error.type == DioExceptionType.badResponse &&
              error.response != null) {
            return handler.resolve(error.response!);
          }

          return handler.next(error);
        },
      ),
    );

  @override
  Future<Either<Failure, List<SmashSuggestion>>> getSmashSuggestions(
      String careerId) async {
    final token = Globals.token;

    final response = await dio.get(
      'career/$careerId',
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token"
        },
      ),
    );

    logger.d(response);

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getSmashSuggestionsResponse = ResponseDto.fromJson(response.data,
        (jsons) => SmashSuggestion.smashSuggestionsFromJson(jsons as List));

    return Right(getSmashSuggestionsResponse.data);
  }
}
