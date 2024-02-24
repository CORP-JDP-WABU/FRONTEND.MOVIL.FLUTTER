import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:wabu/features/authentication/domain/models/auth_keys/auth_keys.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/token/token.dart';

class AuthDioDatasource extends AuthRemoteDatasource {
  final dio = ApiClient.instance.securityClient.dio;

  @override
  Future<Either<Failure, AuthKeys>> getKeys() async {
    final response = await dio.get('auth/v1.0/keys');

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final authKeysResponse = ResponseDto.fromJson(response.data,
        (json) => AuthKeys.fromJson(json as Map<String, dynamic>));

    return Right(authKeysResponse.data);
  }

  @override
  Future<Either<Failure, Token>> logIn(EncryptedForm encryptedForm) async {
    final response = await dio.post(
      'auth/v1.0/login',
      data: encryptedForm.toJson(),
    );

    if (response.statusCode != 201) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final logInResponse = ResponseDto.fromJson(
        response.data, (json) => Token.fromJson(json as Map<String, dynamic>));

    return Right(logInResponse.data);
  }
}
