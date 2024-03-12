import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/teachers/domain/domain.dart';

abstract class TeachersRepository {
  Future<Either<Failure, Teacher>> getTeacherCourse(
      String teacherId, String courseId);
  Future<Either<Failure, TeacherCourseComments>> getCommentsOfTeacherCourse(String teacherId, String courseId);
  Future<Either<Failure, List<CareerTeacherCourse>>> getCareerTeachers(String careerId);
  Future<Either<Failure, TeacherProfile>> getTeacherProfile(
      String teacherId, String careerId);
}
