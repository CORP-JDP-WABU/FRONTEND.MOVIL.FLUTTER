import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/authentication/domain/models/update_info_form_result/nested_update_info_form_result.dart';

part 'update_info_form_result.freezed.dart';
part 'update_info_form_result.g.dart';

// @freezed
// class UpdateInfoFormResult with _$UpdateInfoFormResult {
//   const factory UpdateInfoFormResult({
//     required NestedUpdateInfoFormResult data,
//   }) = _UpdateInfoFormResult;

//   factory UpdateInfoFormResult.fromJson(Map<String, dynamic> json) =>
//       _$UpdateInfoFormResultFromJson(json);
// }

@freezed
class UpdateInfoFormResult with _$UpdateInfoFormResult {
  const factory UpdateInfoFormResult({
    required bool isUpdate,
  }) = _UpdateInfoFormResult;

  factory UpdateInfoFormResult.fromJson(Map<String, dynamic> json) =>
      _$UpdateInfoFormResultFromJson(json);
}