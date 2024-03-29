import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/home/domain/domain.dart';

abstract class DashboardRemoteDatasource {
  Future<Either<Failure, HomeDashboard>> getStudentDashboard(
      String universityId, String studentId);
}
