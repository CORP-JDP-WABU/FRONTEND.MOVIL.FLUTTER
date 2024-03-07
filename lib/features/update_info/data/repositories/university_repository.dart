import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/update_info/update_info.dart';

abstract class UniversityRepository {
  Future<Either<Failure, List<University>>> getUniversities();
}