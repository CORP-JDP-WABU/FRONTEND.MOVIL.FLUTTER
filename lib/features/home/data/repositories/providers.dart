import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/home/data/data.dart';

final dashboardRepositoryProvider = Provider((ref) {
  return DashboardDioRepository(
      dashboardRemoteDatasource: DashboardDioDatasource());
});
