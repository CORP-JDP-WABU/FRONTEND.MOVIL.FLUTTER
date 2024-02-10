import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';

class SmashOperationsDioRepository extends SmashOperationsRepository {
  SmashOperationsDioRepository({
    required this.smashOperationsRemoteDatasource,
  });

  final SmashOperationsRemoteDatasource smashOperationsRemoteDatasource;

  @override
  Future<Either<Failure, IgnoreTeacherResponse>> ignoreTeacher(
      String courseId, String teacherId) {
    return smashOperationsRemoteDatasource.ignoreTeacher(courseId, teacherId);
  }

  @override
  Future<Either<Failure, IgnoreTeacherResponse>> qualifyTeacher(String courseId,
      String teacherId, TeacherQualification teacherQualification) {
    return smashOperationsRemoteDatasource.qualifyTeacher(
        courseId, teacherId, teacherQualification);
  }

  @override
  Future<Either<Failure, IgnoreTeacherResponse>> commentTeacher(
      String courseId, String teacherId, TeacherComment teacherComment) {
    return smashOperationsRemoteDatasource.commentTeacher(
        courseId, teacherId, teacherComment);
  }
}
