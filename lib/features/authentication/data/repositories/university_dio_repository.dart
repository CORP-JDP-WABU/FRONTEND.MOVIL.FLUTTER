import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/authentication/data/datasources/university_dio_datasource.dart';
import 'package:wabu/features/authentication/data/repositories/university_repository.dart';
import 'package:wabu/features/authentication/domain/models/university/university.dart';

class UniversityDioRepository extends UniversityRepository {
  final UniversityDioDatasource universityRemoteDatasource;

  UniversityDioRepository({required this.universityRemoteDatasource});

  @override
  Future<Either<Failure, List<University>>> getUniversities() {
    return universityRemoteDatasource.getUniversities();
  }
}
