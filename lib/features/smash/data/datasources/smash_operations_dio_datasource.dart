import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/data/response/response_dto.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/utils/logger.dart';

class SmashOperationsDioDatasource extends SmashOperationsRemoteDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://52.91.65.217:4004/api/qualification/v1.0/',
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
  Future<Either<Failure, IgnoreTeacherResponse>> ignoreTeacher(
      String courseId, String teacherId) async {
    final token = Globals.token;

    final response = await dio.patch(
      'course/$courseId/teacher/$teacherId/ignorant',
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

    final ignoreTeacherResponse = ResponseDto.fromJson(
      response.data,
      (json) => IgnoreTeacherResponse.fromJson(json as Map<String, dynamic>),
    );

    return Right(ignoreTeacherResponse.data);
  }
}
