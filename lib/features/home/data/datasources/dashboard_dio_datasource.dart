import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/data/response/response_dto.dart';
import 'package:wabu/constants/globals.dart';
import 'package:wabu/features/home/data/data.dart';
import 'package:wabu/features/home/domain/domain.dart';

class DashboardDioDatasource extends DashboardRemoteDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://52.91.65.217:4001/api/dashboard/v1.0/',
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
  Future<Either<Failure, HomeDashboard>> getStudentDashboard(
      String universityId, String studentId) async {
    final token = Globals.token;

    final response = await dio.get(
      'university/$universityId/student/$studentId',
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

    final getStudentDashboardResponse = ResponseDto.fromJson(
      response.data,
      (json) => HomeDashboard.fromJson(json as Map<String, dynamic>),
    );

    return Right(getStudentDashboardResponse.data);
  }
}
