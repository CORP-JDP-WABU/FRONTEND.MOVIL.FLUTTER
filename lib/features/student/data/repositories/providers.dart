import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/student/data/datasources/student_dio_datasource.dart';
import 'package:wabu/features/student/data/repositories/student_dio_repository.dart';

final studentRepositoryProvider = Provider((ref) {
  return StudentDioRepository(studentRemoteDatasource: StudentDioDatasource());
});
