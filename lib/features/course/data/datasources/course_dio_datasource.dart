import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/course/data/data.dart';
import 'package:wabu/features/course/domain/domain.dart';
import 'package:wabu/utils/utils.dart';

class CourseDioDatasource extends CourseRemoteDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://52.91.65.217:4002/api/',
    ),
  )..interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          logger.i('''
            Path:
            ${options.path}
            Headers:
            ${options.headers}
            Query:
            ${options.queryParameters}
            Data:
            ${options.data}
          ''');

          return handler.next(options);
        },
        onResponse: (response, handler) {
          logger.i(response);

          return handler.next(response);
        },
        onError: (error, handler) {
          logger.e(error);

          if (error.type == DioExceptionType.badResponse &&
              error.response != null) {
            return handler.resolve(error.response!);
          }

          return handler.next(error);
        },
      ),
    );

  @override
  Future<Either<Failure, CourseTeachersResponse>> getCourseTeachers(String courseId) async {
    final token = Globals.token;

    final response = await dio.get(
      'course/v1.0/$courseId/teachers',
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token"
        },
      ),
    );

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getCourseTeachersResponse = ResponseDto.fromJson(
      response.data,
      (json) => CourseTeachersResponse.fromJson(json as Map<String, dynamic>),
    );

    return Right(getCourseTeachersResponse.data);
  }
}