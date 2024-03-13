import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/compare/compare.dart';

abstract class CompareRemoteDatasource {
  Future<Either<Failure, SearchResult>> getSearchResults(
      String universityId, int skipe, String searchText);

  Future<Either<Failure, List<CompareTeacher>>> compareTeachers(
      String universityId, List<String> teacherIds);
}
