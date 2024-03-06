import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/authentication/authentication.dart';

abstract class AccountRepository {
  Future<Either<Failure, Student>> register(EncryptedForm encryptedForm);
  Future<Either<Failure, CodeValidationResult>> verifyRegistration(EncryptedForm encryptedForm);
  Future<Either<Failure, Student>> requestRecovery(EncryptedForm encryptedForm);
  Future<Either<Failure, UpdateInfoFormResult>> recover(EncryptedForm encryptedForm);
  Future<Either<Failure, CodeValidationResult>> verifyRecovery(EncryptedForm encryptedForm);
}
