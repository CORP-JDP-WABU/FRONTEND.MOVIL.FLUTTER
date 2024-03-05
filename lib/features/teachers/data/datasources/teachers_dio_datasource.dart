import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/data/response/response_dto.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/teachers/data/datasources/teachers_remote_datasource.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class TeachersDioDatasource extends TeachersRemoteDatasource {
  final dio = ApiClientToken.instance.universityClient.dio;

  @override
  Future<Either<Failure, TeacherCourseComments>> getCommentsOfTeacherCourse(
      String teacherId, String courseId) async {
    final response = await dio.get(
      'teacher/v1.0/$teacherId/course/$courseId/comment',
    
    );

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getCommentsOfTeacherCourseResponse = ResponseDto.fromJson(
      response.data,
      (json) => TeacherCourseComments.fromJson(json as Map<String, dynamic>),
    );

    return Right(getCommentsOfTeacherCourseResponse.data);
  }

  @override
  Future<Either<Failure, Teacher>> getTeacherCourse(
      String teacherId, String courseId) async {
    final response = await dio.get(
      'teacher/v1.0/$teacherId/course/$courseId',
    );

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getTeacherCourseResponse = ResponseDto.fromJson(
      response.data,
      (json) => Teacher.fromJson(json as Map<String, dynamic>),
    );

    return Right(getTeacherCourseResponse.data);
  }

  @override
  Future<Either<Failure, List<CareerTeacherCourse>>> getCareerTeachers(
      String careerId) async {
    final response = await dio.get(
      'teacher/v1.0/career/$careerId',
    );

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getCareerTeachersResponse = ResponseDto.fromJson(
        response.data,
        (jsons) =>
            CareerTeacherCourse.careerTeacherCoursesFromJson(jsons as List));

    return Right(getCareerTeachersResponse.data);
  }
}
