import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/authentication/domain/models/keys/keys.dart';

part 'auth_keys.freezed.dart';
part 'auth_keys.g.dart';

@freezed
class AuthKeys with _$AuthKeys {
  const factory AuthKeys({
    required Keys keys,
    required String hash,
  }) = _AuthKeys;

  factory AuthKeys.fromJson(Map<String, dynamic> json) => _$AuthKeysFromJson(json);
}