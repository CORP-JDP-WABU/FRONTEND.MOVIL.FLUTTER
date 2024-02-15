import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/search/data/data.dart';
import 'package:wabu/features/search/domain/domain.dart';

class SearchDioRepository extends SearchRepository {
  SearchDioRepository({required this.searchRemoteDatasource});

  final SearchRemoteDatasource searchRemoteDatasource;

  @override
  Future<Either<Failure, SearchResult>> getSearchResults(
      String universityId, int skipe, String searchText) {
    return searchRemoteDatasource.getSearchResults(
        universityId, skipe, searchText);
  }
}
