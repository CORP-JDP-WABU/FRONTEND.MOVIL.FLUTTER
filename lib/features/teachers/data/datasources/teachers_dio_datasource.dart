import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/data/response/response_dto.dart';
import 'package:wabu/features/teachers/data/datasources/teachers_remote_datasource.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class TeachersDioDatasource extends TeachersRemoteDatasource {
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
  Future<void> getCommentsOfTeacherCourse(
      String teacherId, String courseId) async {}

  @override
  Future<Either<Failure, Teacher>> getTeacherCourse(
      String teacherId, String courseId) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    final response = await dio.get(
      '$teacherId/course/$courseId',
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $token",
        },
      ),
    );

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getTeacherCourseResponse = ResponseDto.fromJson(response.data,
        (json) => Teacher.fromJson(json as Map<String, dynamic>));

    return Right(getTeacherCourseResponse.data);
  }
}
