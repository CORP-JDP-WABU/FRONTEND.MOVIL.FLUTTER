import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/failure/failure.dart';
import 'package:wabu/common/data/response/response_dto.dart';
// import 'package:wabu/constants/status_code.dart';
import 'package:wabu/features/authentication/data/datasources/auth_remote_datasource.dart';
import 'package:dio/dio.dart';
import 'package:wabu/features/authentication/domain/models/auth_keys/auth_keys.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/token/token.dart';

class AuthDioDatasource extends AuthRemoteDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://52.91.65.217:4000/api/auth/v1.0/',
    ),
  )..interceptors.add(
      InterceptorsWrapper(
        onError: (error, handler) {
          if (error.type == DioExceptionType.badResponse &&
              error.response != null) {
            return handler.resolve(error.response!);
          }

          return handler.next(error);
        },
      ),
    );

  @override
  Future<Either<Failure, AuthKeys>> getKeys() async {
    final response = await dio.get('keys');

    print('KEYS');
    print(response);

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
      'login',
      data: encryptedForm.toJson(),
    );

    print(encryptedForm);
    print(response);

    if (response.statusCode != 201) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final logInResponse = ResponseDto.fromJson(
        response.data, (json) => Token.fromJson(json as Map<String, dynamic>));

    return Right(logInResponse.data);
  }
}
