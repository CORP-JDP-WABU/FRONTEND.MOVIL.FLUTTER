import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/teachers/teachers.dart';

class TeachersDioRepository extends TeachersRepository {
  final TeachersRemoteDatasource teachersRemoteDatasource;

  TeachersDioRepository({required this.teachersRemoteDatasource});

  @override
  Future<Either<Failure, TeacherCourseComments>> getCommentsOfTeacherCourse(
      String teacherId, String courseId) {
    return teachersRemoteDatasource.getCommentsOfTeacherCourse(
        teacherId, courseId);
  }

  @override
  Future<Either<Failure, Teacher>> getTeacherCourse(
      String teacherId, String courseId) {
    return teachersRemoteDatasource.getTeacherCourse(teacherId, courseId);
  }

  @override
  Future<Either<Failure, List<CareerTeacherCourse>>> getCareerTeachers(
      String careerId) {
    return teachersRemoteDatasource.getCareerTeachers(careerId);
  }

  @override
  Future<Either<Failure, void>> getTeacherProfile(
      String teacherId, String careerId) {
    return teachersRemoteDatasource.getTeacherProfile(teacherId, careerId);
  }
}
