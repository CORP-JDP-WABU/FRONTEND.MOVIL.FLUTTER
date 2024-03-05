import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/inputs/new_password.dart';
import 'package:wabu/common/inputs/password.dart';

part 'new_password_state.freezed.dart';

@freezed
class NewPasswordState with _$NewPasswordState {
  const factory NewPasswordState({
    @Default(NewPassword.pure()) NewPassword newPassword,
    @Default(Password.pure()) Password confirmNewPassword,
    @Default(false) bool isValid,
    @Default(FormStatus.empty) FormStatus formStatus,
  }) = _NewPasswordState;
}
