import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/data/response/response_dto.dart';
import 'package:wabu/features/student/data/datasources/student_remote_datasource.dart';
import 'package:wabu/features/student/domain/student/student.dart';

class StudentDioDatasource extends StudentRemoteDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://52.91.65.217:4003/api/student/v1.0/',
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
  Future<Either<Failure, Student>> getStudent(String studentId) async {
    final response = await dio.get('/$studentId');

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getStudentResponse = ResponseDto.fromJson(response.data, (json) => Student.fromJson(json as Map<String, dynamic>));

    return Right(getStudentResponse.data);
  }
}
