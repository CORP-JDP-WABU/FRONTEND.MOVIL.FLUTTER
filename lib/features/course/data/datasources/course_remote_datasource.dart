import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/course/domain/domain.dart';

abstract class CourseRemoteDatasource {
  Future<Either<Failure, CourseTeachersResponse>> getCourseTeachers(
      String courseId);
}
