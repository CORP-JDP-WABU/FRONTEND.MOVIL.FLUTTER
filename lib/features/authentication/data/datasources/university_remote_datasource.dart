import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/authentication/domain/models/university/university.dart';

abstract class UniversityRemoteDatasource {
  Future<Either<Failure, List<University>>> getUniversities();
}