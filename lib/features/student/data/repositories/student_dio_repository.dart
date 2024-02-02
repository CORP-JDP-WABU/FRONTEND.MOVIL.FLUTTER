import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/student/data/datasources/student_remote_datasource.dart';
import 'package:wabu/features/student/data/repositories/student_repository.dart';
import 'package:wabu/features/student/domain/student/student.dart';

class StudentDioRepository extends StudentRepository {
  final StudentRemoteDatasource studentRemoteDatasource;

  StudentDioRepository({required this.studentRemoteDatasource});

  @override
  Future<Either<Failure, Student>> getStudent(String studentId) {
    return studentRemoteDatasource.getStudent(studentId);
  }
}
