import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/compare/compare.dart';

final compareRepositoryProvider = Provider((ref) {
  return CompareDioRepository(
    compareRemoteDatasource: CompareDioDatasource(),
  );
});
