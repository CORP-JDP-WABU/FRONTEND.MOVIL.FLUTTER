import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';

abstract class SmashOperationsRepository {
  Future<Either<Failure, IgnoreTeacherResponse>> ignoreTeacher(
      String courseId, String teacherId);

  Future<Either<Failure, QualifyTeacherResponse>> qualifyTeacher(
      String courseId,
      String teacherId,
      TeacherQualification teacherQualification);

  Future<Either<Failure, CommentTeacherResponse>> commentTeacher(
      String courseId, String teacherId, TeacherComment teacherComment);
}
