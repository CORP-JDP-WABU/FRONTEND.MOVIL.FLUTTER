// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_keys.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthKeysImpl _$$AuthKeysImplFromJson(Map<String, dynamic> json) =>
    _$AuthKeysImpl(
      keys: Keys.fromJson(json['keys'] as Map<String, dynamic>),
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$$AuthKeysImplToJson(_$AuthKeysImpl instance) =>
    <String, dynamic>{
      'keys': instance.keys,
      'hash': instance.hash,
    };
