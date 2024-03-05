import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/search/data/data.dart';

final searchRepositoryProvider = Provider((ref) {
  return SearchDioRepository(
    searchRemoteDatasource: SearchDioDatasource(),
  );
});
