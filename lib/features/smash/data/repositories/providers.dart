import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/smash/data/data.dart';

final smashRepositoryProvider = Provider((ref) {
  return SmashDioRepository(
    smashRemoteDatasource: SmashDioDatasource(),
  );
});
