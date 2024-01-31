import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypted_form.freezed.dart';
part 'encrypted_form.g.dart';

@freezed
class EncryptedForm with _$EncryptedForm {
  const factory EncryptedForm({
    required String hash,
    required String data,
  }) = _EncryptedForm;

  factory EncryptedForm.fromJson(Map<String, dynamic> json) => _$EncryptedFormFromJson(json);
}
