import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/update_info/update_info.dart';

class AccountDioRepository extends AccountRepository {
  final AccountRemoteDatasource accountRemoteDatasource;

  AccountDioRepository({required this.accountRemoteDatasource});

  @override
  Future<Either<Failure, UpdateInfoFormResult>> updateRegistrationInfo(UpdateInfoForm updateInfoForm) {
    return accountRemoteDatasource.updateRegistrationInfo(updateInfoForm);
  }
}
