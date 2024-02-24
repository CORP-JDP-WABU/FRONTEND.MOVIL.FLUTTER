import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/constants/status_code.dart';
import 'package:wabu/features/authentication/data/datasources/account_remote_datasource.dart';
import 'package:wabu/features/authentication/domain/models/code_validation_result/code_validation_result.dart';
import 'package:wabu/features/authentication/domain/models/encrypted_form/encrypted_form.dart';
import 'package:wabu/features/authentication/domain/models/student/student.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form/update_info_form.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form_result/update_info_form_result.dart';

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
  Future<Either<Failure, UpdateInfoFormResult>> updateRegistrationInfo(
      UpdateInfoForm updateInfoForm) async {
    final response = await dio.patch(
      'account/v1.0/register',
      data: updateInfoForm.toJson(),
    );

    if (response.statusCode != 200) {
      final failureResponse = Failure.fromJson(response.data);

      return Left(failureResponse);
    }

    final updateRegistrationInfoResult =
        ResponseDto.fromJson(response.data, (json) {
      return UpdateInfoFormResult.fromJson((json as Map<String, dynamic>));
    });

    return Right(updateRegistrationInfoResult.data);
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
