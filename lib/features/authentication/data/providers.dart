import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/authentication/data/datasources/account_dio_datasource.dart';
import 'package:wabu/features/authentication/data/datasources/auth_dio_datasource.dart';
import 'package:wabu/features/authentication/data/repositories/account_dio_repository.dart';
import 'package:wabu/features/authentication/data/repositories/auth_dio_repository.dart';

final authRepositoryProvider = Provider((ref) {
  return AuthDioRepository(authRemoteDatasource: AuthDioDatasource());
});

final accountRepositoryProvider = Provider((ref) {
  return AccountDioRepository(accountRemoteDatasource: AccountDioDataSource());
});
