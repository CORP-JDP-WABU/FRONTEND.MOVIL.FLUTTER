import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/smash/domain/domain.dart';

abstract class SmashRepository {
  Future<Either<Failure, List<SmashSuggestion>>> getSmashSuggestions(
      String careerId);
}
