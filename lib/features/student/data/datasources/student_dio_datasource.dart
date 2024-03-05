import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/data/response/response_dto.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/student/data/datasources/student_remote_datasource.dart';
import 'package:wabu/features/student/domain/student/student.dart';

class StudentDioDatasource extends StudentRemoteDatasource {
  final dio = ApiClient.instance.studentClient.dio;

  @override
  Future<Either<Failure, Student>> getStudent(String studentId) async {
    final response = await dio.get('student/v1.0/$studentId/');

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final getStudentResponse = ResponseDto.fromJson(response.data, (json) => Student.fromJson(json as Map<String, dynamic>));

    return Right(getStudentResponse.data);
  }
}
