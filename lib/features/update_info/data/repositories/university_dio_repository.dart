import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/update_info/update_info.dart';

class UniversityDioRepository extends UniversityRepository {
  final UniversityDioDatasource universityRemoteDatasource;

  UniversityDioRepository({required this.universityRemoteDatasource});

  @override
  Future<Either<Failure, List<University>>> getUniversities() {
    return universityRemoteDatasource.getUniversities();
  }
}
