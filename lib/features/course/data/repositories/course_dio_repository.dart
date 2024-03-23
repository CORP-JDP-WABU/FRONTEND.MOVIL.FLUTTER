import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/course/course.dart';

class CourseDioRepository extends CourseRepository {
  CourseDioRepository({required this.courseRemoteDatasource});

  final CourseRemoteDatasource courseRemoteDatasource;

  @override
  Future<Either<Failure, CourseTeachersResponse>> getCourseTeachers(
    String courseId,
  ) {
    return courseRemoteDatasource.getCourseTeachers(courseId);
  }

  @override
  Future<Either<Failure, CourseProfile>> getCourseProfile(
    String courseId,
  ) {
    return courseRemoteDatasource.getCourseProfile(courseId);
  }
}
