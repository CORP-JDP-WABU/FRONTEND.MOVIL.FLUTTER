import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/update_info/update_info.dart';

final accountRepositoryProvider = Provider((ref) {
  return AccountDioRepository(accountRemoteDatasource: AccountDioDataSource());
});

final universityRepositoryProvider = Provider((ref) {
  return UniversityDioRepository(
      universityRemoteDatasource: UniversityDioDatasource());
});
