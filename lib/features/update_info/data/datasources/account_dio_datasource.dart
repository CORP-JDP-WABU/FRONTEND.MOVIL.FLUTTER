import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/config/api/api.dart';
import 'package:wabu/features/update_info/update_info.dart';

class AccountDioDataSource extends AccountRemoteDatasource {
  final dio = ApiClient.instance.securityClient.dio;

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
}
