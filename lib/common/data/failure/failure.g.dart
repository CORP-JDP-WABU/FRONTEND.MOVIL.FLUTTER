// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailureImpl _$$FailureImplFromJson(Map<String, dynamic> json) =>
    _$FailureImpl(
      statusCode: json['statusCode'] as int,
      message: json['message'] as String,
      errorCode: json['errorCode'] as String,
    );

Map<String, dynamic> _$$FailureImplToJson(_$FailureImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'errorCode': instance.errorCode,
    };
