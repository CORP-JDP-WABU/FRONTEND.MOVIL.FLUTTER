import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/documents/documents.dart';

final documentOperationsRepositoryProvider = Provider((ref) {
  return DocumentOperationsDioRepository(
    documentOperationsRemoteDatasource: DocumentOperationsDioDatasource(),
  );
});
