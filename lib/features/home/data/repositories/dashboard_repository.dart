import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/home/domain/domain.dart';

abstract class DashboardRepository {
  Future<Either<Failure, HomeDashboard>> getStudentDashboard(
      String universityId, String studentId);
}
