import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';

class SmashOperationsDioDatasource extends SmashOperationsRemoteDatasource {
  final dio = ApiClientToken.instance.operationClient.dio;
  
  @override
  Future<Either<Failure, IgnoreTeacherResponse>> ignoreTeacher(
      String courseId, String teacherId) async {
    final response = await dio.patch(
      'qualification/v1.0/course/$courseId/teacher/$teacherId/ignorant',
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
    final response = await dio.patch(
      'qualification/v1.0/course/$courseId/teacher/$teacherId',
      data: teacherQualification.toJson(),
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
    final response = await dio.patch(
      'comment/v1.0/course/$courseId/teacher/$teacherId',
      data: teacherComment.toJson(),
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
