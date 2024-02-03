// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherCourseImpl _$$TeacherCourseImplFromJson(Map<String, dynamic> json) =>
    _$TeacherCourseImpl(
      idCourse: json['idCourse'] as String?,
      name: json['name'] as String?,
      manyQualifications: json['manyQualifications'] as int?,
      manyAverageQualifications:
          (json['manyAverageQualifications'] as num?)?.toDouble(),
      manyComments: json['manyComments'] as int?,
      optionalQualifications: (json['optionalQualifications'] as List<dynamic>?)
          ?.map((e) => TeacherCourseQualificationOptional.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      requiredQualifications: (json['requiredQualifications'] as List<dynamic>?)
          ?.map((e) => TeacherCourseQualificationRequired.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeacherCourseImplToJson(_$TeacherCourseImpl instance) =>
    <String, dynamic>{
      'idCourse': instance.idCourse,
      'name': instance.name,
      'manyQualifications': instance.manyQualifications,
      'manyAverageQualifications': instance.manyAverageQualifications,
      'manyComments': instance.manyComments,
      'optionalQualifications': instance.optionalQualifications,
      'requiredQualifications': instance.requiredQualifications,
    };
