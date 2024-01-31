import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/data/response/response_dto.dart';
import 'package:wabu/features/authentication/data/datasources/university_remote_datasource.dart';
import 'package:wabu/features/authentication/domain/models/university/university.dart';

class UniversityDioDatasource extends UniversityRemoteDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://52.91.65.217:4002/api/university/v1.0',
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
  Future<Either<Failure, List<University>>> getUniversities() async {
    final response = await dio.get('/');

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getUniversitiesResponse = ResponseDto.fromJson(response.data,
        (jsons) => University.universitiesFromJson(jsons as List));

    return Right(getUniversitiesResponse.data);
  }
}
