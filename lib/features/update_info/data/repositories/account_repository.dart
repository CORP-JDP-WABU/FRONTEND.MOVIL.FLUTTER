import 'package:dartz/dartz.dart';
import 'package:wabu/common/data/data.dart';
import 'package:wabu/features/update_info/update_info.dart';

abstract class AccountRepository {
  Future<Either<Failure, UpdateInfoFormResult>> updateRegistrationInfo(UpdateInfoForm updateInfoForm);
}
