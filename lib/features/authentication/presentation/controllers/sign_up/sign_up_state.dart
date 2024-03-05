import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/inputs/email.dart';
import 'package:wabu/common/inputs/new_password.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required Email email,
    required NewPassword password,
    @Default(false) bool isValid,
    @Default(FormStatus.empty) FormStatus formStatus,
  }) = _SignUpState;
}