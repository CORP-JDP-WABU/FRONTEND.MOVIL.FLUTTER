// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDtoImpl<T> _$$ResponseDtoImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResponseDtoImpl<T>(
      message: json['message'] as String,
      operation: json['operation'] as String,
      data: fromJsonT(json['data']),
    );

Map<String, dynamic> _$$ResponseDtoImplToJson<T>(
  _$ResponseDtoImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'operation': instance.operation,
      'data': toJsonT(instance.data),
    };
