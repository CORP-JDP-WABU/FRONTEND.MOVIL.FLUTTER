// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_qualification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherQualificationImpl _$$TeacherQualificationImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherQualificationImpl(
      teacherQualificationRequired: json['teacherQualificationRequired'] == null
          ? null
          : TeacherQualificationRequired.fromJson(
              json['teacherQualificationRequired'] as Map<String, dynamic>),
      teacherQualificationOptional: json['teacherQualificationOptional'] == null
          ? null
          : TeacherQualificationOptional.fromJson(
              json['teacherQualificationOptional'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeacherQualificationImplToJson(
        _$TeacherQualificationImpl instance) =>
    <String, dynamic>{
      'teacherQualificationRequired': instance.teacherQualificationRequired,
      'teacherQualificationOptional': instance.teacherQualificationOptional,
    };
