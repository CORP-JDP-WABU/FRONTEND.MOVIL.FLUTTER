import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/authentication/domain/models/auth_keys/auth_keys.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/token/token.dart';

abstract class AuthRemoteDatasource {
  Future<Either<Failure, AuthKeys>> getKeys();
  Future<Either<Failure, Token>> logIn(EncryptedForm encryptedForm);
}
