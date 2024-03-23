import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/course/course.dart';

class CourseDioDatasource extends CourseRemoteDatasource {
  final dio = ApiClientToken.instance.universityClient.dio;

  @override
  Future<Either<Failure, CourseTeachersResponse>> getCourseTeachers(
    String courseId,
  ) async {
    final response = await dio.get('course/v1.0/$courseId/teachers');

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

  @override
  Future<Either<Failure, CourseProfile>> getCourseProfile(
    String courseId,
  ) async {
    final response =
        await dio.get('course/v1.0/$courseId/profile');

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getCourseProfileResponse = ResponseDto.fromJson(
      response.data,
      (json) => CourseProfile.fromJson(json as Map<String, dynamic>),
    );

    return Right(getCourseProfileResponse.data);
  }
}
