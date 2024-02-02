import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/teachers/data/datasources/teachers_remote_datasource.dart';
import 'package:wabu/features/teachers/data/repositories/teachers_repository.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

class TeachersDioRepository extends TeachersRepository {
  final TeachersRemoteDatasource teachersRemoteDatasource;

  TeachersDioRepository({required this.teachersRemoteDatasource});

  @override
  Future<void> getCommentsOfTeacherCourse(String teacherId, String courseId) {
    return teachersRemoteDatasource.getCommentsOfTeacherCourse(
        teacherId, courseId);
  }

  @override
  Future<Either<Failure, Teacher>> getTeacherCourse(
      String teacherId, String courseId) {
    return teachersRemoteDatasource.getTeacherCourse(teacherId, courseId);
  }
}
