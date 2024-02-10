import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/smash/domain/domain.dart';

abstract class SmashOperationsRemoteDatasource {
  Future<Either<Failure, IgnoreTeacherResponse>> ignoreTeacher(
      String courseId, String teacherId);

      Future<Either<Failure, IgnoreTeacherResponse>> qualifyTeacher(
      String courseId, String teacherId, TeacherQualification teacherQualification);

      Future<Either<Failure, IgnoreTeacherResponse>> commentTeacher(
      String courseId, String teacherId, TeacherComment teacherComment);
}
