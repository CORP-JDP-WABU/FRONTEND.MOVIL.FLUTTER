import 'package:freezed_annotation/freezed_annotation.dart';

part 'nested_update_info_form_result.freezed.dart';
part 'nested_update_info_form_result.g.dart';

@freezed
class NestedUpdateInfoFormResult with _$NestedUpdateInfoFormResult {
  const factory NestedUpdateInfoFormResult({
    required bool isUpdate,
  }) = _NestedUpdateInfoFormResult;

  factory NestedUpdateInfoFormResult.fromJson(Map<String, dynamic> json) =>
      _$NestedUpdateInfoFormResultFromJson(json);
}