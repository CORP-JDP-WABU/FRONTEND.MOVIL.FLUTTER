import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/home/data/data.dart';
import 'package:wabu/features/home/domain/domain.dart';

class DashboardDioDatasource extends DashboardRemoteDatasource {
  final dio = ApiClientToken.instance.dashboardClient.dio;

  @override
  Future<Either<Failure, HomeDashboard>> getStudentDashboard(
      String universityId, String studentId) async {
    final response = await dio.get(
      'dashboard/v1.0/university/$universityId/student/$studentId'
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
