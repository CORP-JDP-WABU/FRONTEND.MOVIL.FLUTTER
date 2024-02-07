import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/home/data/data.dart';
import 'package:wabu/features/home/domain/domain.dart';

class DashboardDioRepository extends DashboardRepository {
  DashboardDioRepository({required this.dashboardRemoteDatasource});

  final DashboardRemoteDatasource dashboardRemoteDatasource;

  @override
  Future<Either<Failure, HomeDashboard>> getStudentDashboard(
      String universityId, String studentId) {
    return dashboardRemoteDatasource.getStudentDashboard(
        universityId, studentId);
  }
}
