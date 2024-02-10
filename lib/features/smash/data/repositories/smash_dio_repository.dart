import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';

class SmashDioRepository extends SmashRepository {
  SmashDioRepository({required this.smashRemoteDatasource});

  final SmashRemoteDatasource smashRemoteDatasource;

  @override
  Future<Either<Failure, List<SmashSuggestion>>> getSmashSuggestions(
      String careerId) {
    return smashRemoteDatasource.getSmashSuggestions(careerId);
  }
}
