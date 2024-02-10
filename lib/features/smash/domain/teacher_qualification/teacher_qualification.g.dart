// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_qualification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherQualificationImpl _$$TeacherQualificationImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherQualificationImpl(
      required: json['required'] == null
          ? const TeacherQualificationRequired()
          : TeacherQualificationRequired.fromJson(
              json['required'] as Map<String, dynamic>),
      optional: json['optional'] == null
          ? const TeacherQualificationOptional()
          : TeacherQualificationOptional.fromJson(
              json['optional'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeacherQualificationImplToJson(
        _$TeacherQualificationImpl instance) =>
    <String, dynamic>{
      'required': instance.required.toJson(),
      'optional': instance.optional.toJson(),
    };
