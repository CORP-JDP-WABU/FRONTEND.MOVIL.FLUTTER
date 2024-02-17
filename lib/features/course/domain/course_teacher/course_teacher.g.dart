// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseTeacherImpl _$$CourseTeacherImplFromJson(Map<String, dynamic> json) =>
    _$CourseTeacherImpl(
      idTeacher: json['idTeacher'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      photoUrl: json['photoUrl'] as String?,
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

Map<String, dynamic> _$$CourseTeacherImplToJson(_$CourseTeacherImpl instance) =>
    <String, dynamic>{
      'idTeacher': instance.idTeacher,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'photoUrl': instance.photoUrl,
      'manyQualifications': instance.manyQualifications,
      'manyAverageQualifications': instance.manyAverageQualifications,
      'manyComments': instance.manyComments,
      'optionalQualifications': instance.optionalQualifications,
      'requiredQualifications': instance.requiredQualifications,
    };
