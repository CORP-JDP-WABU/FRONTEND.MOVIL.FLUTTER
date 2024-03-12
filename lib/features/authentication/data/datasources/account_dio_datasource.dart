import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/constants/status_code.dart';
import 'package:wabu/features/authentication/authentication.dart';

class AccountDioDataSource extends AccountRemoteDatasource {
  final dio = ApiClient.instance.securityClient.dio;

  @override
  Future<Either<Failure, Student>> register(EncryptedForm encryptedForm) async {
    final response = await dio.post(
      'account/v1.0/register',
      data: encryptedForm.toJson(),
    );

    if (response.statusCode != StatusCode.success) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final registerResponse = ResponseDto.fromJson(
        response.data,
        (json) => Student.fromRegistration(
            (json as Map<String, dynamic>)['messageId']));

    return Right(registerResponse.data);
  }

  @override
  Future<Either<Failure, CodeValidationResult>> verifyRegistration(
      EncryptedForm encryptedForm) async {
    final response = await dio.post(
      'account/v1.0/register/verify',
      data: encryptedForm.toJson(),
    );

    if (response.statusCode != StatusCode.success) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final verifyRegistrationResult = ResponseDto.fromJson(
        response.data,
        (json) =>
            CodeValidationResult.fromJson((json as Map<String, dynamic>)));

    return Right(verifyRegistrationResult.data);
  }

  @override
  Future<Either<Failure, UpdateInfoFormResult>> recover(EncryptedForm encryptedForm) async {
    final response = await dio.patch(
      'account/v1.0/recovery',
      data: encryptedForm.toJson(),
    );

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final recoverResponse = ResponseDto.fromJson(
        response.data,
        (json) => UpdateInfoFormResult.fromJson(
            (json as Map<String, dynamic>)));

    return Right(recoverResponse.data);
  }

  @override
  Future<Either<Failure, Student>> requestRecovery(
      EncryptedForm encryptedForm) async {
    final response = await dio.post(
      'account/v1.0/recovery',
      data: encryptedForm.toJson(),
    );

    if (response.statusCode != StatusCode.success) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final registerResponse = ResponseDto.fromJson(
        response.data,
        (json) => Student.fromRegistration(
            (json as Map<String, dynamic>)['messageId']));

    return Right(registerResponse.data);
  }

  @override
  Future<Either<Failure, CodeValidationResult>> verifyRecovery(
      EncryptedForm encryptedForm) async {
    final response = await dio.post(
      'account/v1.0/recovery/verify',
      data: encryptedForm.toJson(),
    );

    if (response.statusCode != StatusCode.success) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final verifyRegistrationResult = ResponseDto.fromJson(
        response.data,
        (json) =>
            CodeValidationResult.fromJson((json as Map<String, dynamic>)));

    return Right(verifyRegistrationResult.data);
  }
}
