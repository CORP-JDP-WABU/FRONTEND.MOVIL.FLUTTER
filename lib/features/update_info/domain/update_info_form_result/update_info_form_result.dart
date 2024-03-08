import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_info_form_result.freezed.dart';
part 'update_info_form_result.g.dart';

@freezed
class UpdateInfoFormResult with _$UpdateInfoFormResult {
  const factory UpdateInfoFormResult({
    required bool isUpdate,
  }) = _UpdateInfoFormResult;

  factory UpdateInfoFormResult.fromJson(Map<String, dynamic> json) =>
      _$UpdateInfoFormResultFromJson(json);
}