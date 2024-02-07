import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/teachers/domain/entities.dart';

abstract class TeachersRemoteDatasource {
  Future<Either<Failure, Teacher>> getTeacherCourse(String teacherId, String courseId);
  Future<Either<Failure, TeacherCourseComments>> getCommentsOfTeacherCourse(String teacherId, String courseId);
  Future<Either<Failure, List<CareerTeacherCourse>>> getCareerTeachers(String careerId);
}
