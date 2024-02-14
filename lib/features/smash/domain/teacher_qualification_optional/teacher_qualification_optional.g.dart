// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_qualification_optional.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherQualificationOptionalImpl _$$TeacherQualificationOptionalImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherQualificationOptionalImpl(
      worked: json['worked'] as int? ?? 0,
      late: json['late'] as int? ?? 0,
      assistance: json['assistance'] as int? ?? 0,
    );

Map<String, dynamic> _$$TeacherQualificationOptionalImplToJson(
        _$TeacherQualificationOptionalImpl instance) =>
    <String, dynamic>{
      'worked': instance.worked,
      'late': instance.late,
      'assistance': instance.assistance,
    };
