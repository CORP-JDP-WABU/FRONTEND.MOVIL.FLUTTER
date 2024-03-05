import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wabu/features/teachers/data/datasources/teachers_dio_datasource.dart';
import 'package:wabu/features/teachers/data/repositories/teachers_dio_repository.dart';

final teachersRepositoryProvider = Provider((ref) {
  return TeachersDioRepository(
      teachersRemoteDatasource: TeachersDioDatasource());
});