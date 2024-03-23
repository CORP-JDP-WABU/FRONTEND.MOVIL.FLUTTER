import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/course/domain/domain.dart';

abstract class CourseRepository {
  Future<Either<Failure, CourseTeachersResponse>> getCourseTeachers(
      String courseId);
  Future<Either<Failure, CourseProfile>> getCourseProfile(
    String courseId,
  );
}
