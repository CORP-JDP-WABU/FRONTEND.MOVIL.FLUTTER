import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/authentication/data/datasources/account_remote_datasource.dart';
import 'package:wabu/features/authentication/data/repositories/account_repository.dart';
import 'package:wabu/features/authentication/domain/models/code_validation_result/code_validation_result.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/student/student.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form/update_info_form.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form_result/update_info_form_result.dart';

class AccountDioRepository extends AccountRepository {
  final AccountRemoteDatasource accountRemoteDatasource;

  AccountDioRepository({required this.accountRemoteDatasource});

  @override
  Future<Either<Failure, Student>> register(EncryptedForm encryptedForm) {
    return accountRemoteDatasource.register(encryptedForm);
  }

  @override
  Future<Either<Failure, UpdateInfoFormResult>> updateRegistrationInfo(UpdateInfoForm updateInfoForm) {
    return accountRemoteDatasource.updateRegistrationInfo(updateInfoForm);
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
