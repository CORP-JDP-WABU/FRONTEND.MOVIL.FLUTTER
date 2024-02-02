import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

abstract class TeachersRemoteDatasource {
  Future<Either<Failure, Teacher>> getTeacherCourse(String teacherId, String courseId);
  Future<void> getCommentsOfTeacherCourse(String teacherId, String courseId);
}
