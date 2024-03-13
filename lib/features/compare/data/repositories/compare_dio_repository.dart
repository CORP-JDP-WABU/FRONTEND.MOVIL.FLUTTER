import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/compare/compare.dart';

class CompareDioRepository extends CompareRepository {
  CompareDioRepository({required this.compareRemoteDatasource});

  final CompareRemoteDatasource compareRemoteDatasource;

  @override
  Future<Either<Failure, SearchResult>> getSearchResults(
      String universityId, int skipe, String searchText) {
    return compareRemoteDatasource.getSearchResults(
        universityId, skipe, searchText);
  }

  @override
  Future<Either<Failure, List<CompareTeacher>>> compareTeachers(
      String universityId, List<String> teacherIds) {
    return compareRemoteDatasource.compareTeachers(universityId, teacherIds);
  }
}
