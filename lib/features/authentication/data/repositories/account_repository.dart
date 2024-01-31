import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/authentication/domain/models/code_validation_result/code_validation_result.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/student/student.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form/update_info_form.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form_result/update_info_form_result.dart';

abstract class AccountRepository {
  Future<Either<Failure, Student>> register(EncryptedForm encryptedForm);
  Future<Either<Failure, UpdateInfoFormResult>> updateRegistrationInfo(UpdateInfoForm updateInfoForm);
  Future<Either<Failure, CodeValidationResult>> verifyRegistration(EncryptedForm encryptedForm);
  Future<Either<Failure, Student>> requestRecovery(EncryptedForm encryptedForm);
  Future<Either<Failure, int>> recover(EncryptedForm encryptedForm);
  Future<Either<Failure, CodeValidationResult>> verifyRecovery(EncryptedForm encryptedForm);
}
