import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/compare/compare.dart';

abstract class CompareRepository {
  Future<Either<Failure, SearchResult>> getSearchResults(
      String universityId, int skipe, String searchText);
}