import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:wabu/features/authentication/data/repositories/auth_repository.dart';
import 'package:wabu/features/authentication/domain/models/auth_keys/auth_keys.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/token/token.dart';

class AuthDioRepository extends AuthRepository {
  final AuthRemoteDatasource authRemoteDatasource;

  AuthDioRepository({required this.authRemoteDatasource});

  @override
  Future<Either<Failure, AuthKeys>> getKeys() {
    return authRemoteDatasource.getKeys();
  }

  @override
  Future<Either<Failure, Token>> logIn(EncryptedForm encryptedForm) {
    return authRemoteDatasource.logIn(encryptedForm);
  }
}
