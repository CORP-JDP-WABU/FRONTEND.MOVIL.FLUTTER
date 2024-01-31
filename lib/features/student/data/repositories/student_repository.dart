import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/student/domain/student/student.dart';

abstract class StudentRepository {
  Future<Either<Failure, Student>> getStudent(String studentId);
}
