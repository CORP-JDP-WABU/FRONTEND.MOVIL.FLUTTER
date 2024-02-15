import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';
import 'package:wabu/utils/logger.dart';

class SmashOperationsDioDatasource extends SmashOperationsRemoteDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://52.91.65.217:4004/api/',
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
  Future<Either<Failure, IgnoreTeacherResponse>> ignoreTeacher(
      String courseId, String teacherId) async {
    final token = Globals.token;

    final response = await dio.patch(
      'qualification/v1.0/course/$courseId/teacher/$teacherId/ignorant',
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

    final ignoreTeacherResponse = ResponseDto.fromJson(
      response.data,
      (json) => IgnoreTeacherResponse.fromJson(json as Map<String, dynamic>),
    );

    return Right(ignoreTeacherResponse.data);
  }

  @override
  Future<Either<Failure, QualifyTeacherResponse>> qualifyTeacher(
      String courseId,
      String teacherId,
      TeacherQualification teacherQualification) async {
    final token = Globals.token;

    final response = await dio.patch(
      'qualification/v1.0/course/$courseId/teacher/$teacherId',
      data: teacherQualification.toJson(),
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

    final qualifyTeacherResponse = ResponseDto.fromJson(
      response.data,
      (json) => QualifyTeacherResponse.fromJson(json as Map<String, dynamic>),
    );

    return Right(qualifyTeacherResponse.data);
  }

  @override
  Future<Either<Failure, CommentTeacherResponse>> commentTeacher(
      String courseId, String teacherId, TeacherComment teacherComment) async {
    final token = Globals.token;

    final response = await dio.patch(
      'comment/v1.0/course/$courseId/teacher/$teacherId',
      data: teacherComment.toJson(),
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

    final commentTeacherResponse = ResponseDto.fromJson(
      response.data,
      (json) => CommentTeacherResponse.fromJson(json as Map<String, dynamic>),
    );

    return Right(commentTeacherResponse.data);
  }
}
