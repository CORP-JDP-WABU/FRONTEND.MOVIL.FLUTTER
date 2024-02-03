// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_course_qualification_optional.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherCourseQualificationOptionalImpl
    _$$TeacherCourseQualificationOptionalImplFromJson(
            Map<String, dynamic> json) =>
        _$TeacherCourseQualificationOptionalImpl(
          averageQualification:
              (json['averageQualification'] as num?)?.toDouble(),
          countQualifications: json['countQualifications'] as int?,
          qualification: json['qualification'] == null
              ? null
              : Qualification.fromJson(
                  json['qualification'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TeacherCourseQualificationOptionalImplToJson(
        _$TeacherCourseQualificationOptionalImpl instance) =>
    <String, dynamic>{
      'averageQualification': instance.averageQualification,
      'countQualifications': instance.countQualifications,
      'qualification': instance.qualification,
    };
