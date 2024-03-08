import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/inputs/email.dart';

part 'forgot_password_state.freezed.dart';

enum ForgotPasswordStatus {
  initial,
  loading,
  loaded,
  noUniversity,
  error,
}

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required Email email,
    @Default(false) bool isValid,
    @Default(FormStatus.empty) FormStatus formStatus,
        @Default(ForgotPasswordStatus.initial) ForgotPasswordStatus forgotPasswordStatus,
  }) = _ForgotPasswordState;
}