// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      idStudent: json['idStudent'] as String? ?? '',
      profileUrl: json['profileUrl'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      information: json['information'] as String? ?? '',
      idUniversity: json['idUniversity'] as String? ?? '',
      university: json['university'] as String? ?? '',
      idCareer: json['idCareer'] as String? ?? '',
      career: json['career'] as String? ?? '',
      cicle: json['cicle'] as String? ?? '',
      isFirstLogin: json['isFirstLogin'] as bool? ?? false,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'idStudent': instance.idStudent,
      'profileUrl': instance.profileUrl,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'information': instance.information,
      'idUniversity': instance.idUniversity,
      'university': instance.university,
      'idCareer': instance.idCareer,
      'career': instance.career,
      'cicle': instance.cicle,
      'isFirstLogin': instance.isFirstLogin,
    };
