import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/authentication/authentication.dart';

class AccountDioRepository extends AccountRepository {
  final AccountRemoteDatasource accountRemoteDatasource;

  AccountDioRepository({required this.accountRemoteDatasource});

  @override
  Future<Either<Failure, Student>> register(EncryptedForm encryptedForm) {
    return accountRemoteDatasource.register(encryptedForm);
  }

  @override
  Future<Either<Failure, CodeValidationResult>> verifyRegistration(EncryptedForm encryptedForm) {
    return accountRemoteDatasource.verifyRegistration(encryptedForm);
  }
  
  @override
  Future<Either<Failure, UpdateInfoFormResult>> recover(EncryptedForm encryptedForm) {
    return accountRemoteDatasource.recover(encryptedForm);
  }
  
  @override
  Future<Either<Failure, Student>> requestRecovery(EncryptedForm encryptedForm) {
    return accountRemoteDatasource.requestRecovery(encryptedForm);
  }
  
  @override
  Future<Either<Failure, CodeValidationResult>> verifyRecovery(EncryptedForm encryptedForm) {
    return accountRemoteDatasource.verifyRecovery(encryptedForm);
  }
}
