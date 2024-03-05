import 'package:freezed_annotation/freezed_annotation.dart';

part 'code_validation_result.freezed.dart';
part 'code_validation_result.g.dart';

@freezed
class CodeValidationResult with _$CodeValidationResult {
  const factory CodeValidationResult({
    @Default(null) String? idStudent,
    required bool isValid,
  }) = _CodeValidationResult;

  factory CodeValidationResult.fromJson(Map<String, dynamic> json) => _$CodeValidationResultFromJson(json);
}
