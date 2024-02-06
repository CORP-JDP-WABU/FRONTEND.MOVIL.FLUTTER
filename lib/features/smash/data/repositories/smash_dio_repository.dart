import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/smash/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';

class SmashDioRepository extends SmashRepository {
  final SmashRemoteDatasource smashRemoteDatasource;

  SmashDioRepository({required this.smashRemoteDatasource});

  @override
  Future<Either<Failure, List<SmashSuggestion>>> getSmashSuggestions(
      String careerId) {
    return smashRemoteDatasource.getSmashSuggestions(careerId);
  }
}
