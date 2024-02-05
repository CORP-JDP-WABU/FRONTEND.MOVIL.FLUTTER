import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_info_form.freezed.dart';
part 'update_info_form.g.dart';

@freezed
class UpdateInfoForm with _$UpdateInfoForm {
  const factory UpdateInfoForm({
    @Default('') String idStudent,
    @Default('') String profileUrl,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String information,
    @Default('') String idUniversity,
    @Default('') String idCareer,
    @Default('') String cicleName,
    @Default(true) bool isAcceptedTermCoditions,
    @Default(true) bool isRegisterNewAccount,
  }) = _UpdateInfoForm;

  factory UpdateInfoForm.fromJson(Map<String, dynamic> json) =>
      _$UpdateInfoFormFromJson(json);
}