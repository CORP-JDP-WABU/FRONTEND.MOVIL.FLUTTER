import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/course/data/data.dart';

final courseRepositoryProvider = Provider((ref) {
  return CourseDioRepository(
    courseRemoteDatasource: CourseDioDatasource(),
  );
});
