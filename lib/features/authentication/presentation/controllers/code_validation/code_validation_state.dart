import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/common/enums/form_status.dart';

part 'code_validation_state.freezed.dart';

@freezed
class CodeValidationState with _$CodeValidationState {
  const factory CodeValidationState({
    required String code,
    @Default(null) String? utilError,
    @Default(false) bool isValid,
    @Default(FormStatus.empty) FormStatus formStatus,
  }) = _CodeValidationState;
}