import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/common/enums/form_status.dart';
import 'package:wabu/common/inputs/email.dart';
import 'package:wabu/common/inputs/password.dart';

part 'log_in_state.freezed.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState({
    required Email email,
    required Password password,
    @Default(null) String? utilError,
    @Default(false) bool isValid,
    @Default(FormStatus.empty) FormStatus formStatus,
  }) = _LogInState;
}