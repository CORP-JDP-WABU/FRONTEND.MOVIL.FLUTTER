// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_info_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateInfoFormImpl _$$UpdateInfoFormImplFromJson(Map<String, dynamic> json) =>
    _$UpdateInfoFormImpl(
      idStudent: json['idStudent'] as String? ?? '',
      profileUrl: json['profileUrl'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      information: json['information'] as String? ?? '',
      idUniversity: json['idUniversity'] as String? ?? '',
      idCareer: json['idCareer'] as String? ?? '',
      cicleName: json['cicleName'] as String? ?? '',
      isAcceptedTermCoditions: json['isAcceptedTermCoditions'] as bool? ?? true,
    );

Map<String, dynamic> _$$UpdateInfoFormImplToJson(
        _$UpdateInfoFormImpl instance) =>
    <String, dynamic>{
      'idStudent': instance.idStudent,
      'profileUrl': instance.profileUrl,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'information': instance.information,
      'idUniversity': instance.idUniversity,
      'idCareer': instance.idCareer,
      'cicleName': instance.cicleName,
      'isAcceptedTermCoditions': instance.isAcceptedTermCoditions,
    };
