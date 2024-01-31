// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenImpl _$$TokenImplFromJson(Map<String, dynamic> json) => _$TokenImpl(
      token: json['token'] as String,
      isFirstLogin: json['isFirstLogin'] as bool? ?? false,
      idStudent: json['idStudent'] as String,
      idUniversity: json['idUniversity'] as String,
    );

Map<String, dynamic> _$$TokenImplToJson(_$TokenImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'isFirstLogin': instance.isFirstLogin,
      'idStudent': instance.idStudent,
      'idUniversity': instance.idUniversity,
    };
