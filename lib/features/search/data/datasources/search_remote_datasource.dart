import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/search/domain/domain.dart';

abstract class SearchRemoteDatasource {
  Future<Either<Failure, SearchResult>> getSearchResults(
      String universityId, int skipe, String searchText);
}
