// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_course_qualification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherCourseQualificationImpl _$$TeacherCourseQualificationImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherCourseQualificationImpl(
      averageQualification: (json['averageQualification'] as num?)?.toDouble(),
      countQualifications: json['countQualifications'] as int?,
      qualification: json['qualification'] == null
          ? null
          : Qualification.fromJson(
              json['qualification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeacherCourseQualificationImplToJson(
        _$TeacherCourseQualificationImpl instance) =>
    <String, dynamic>{
      'averageQualification': instance.averageQualification,
      'countQualifications': instance.countQualifications,
      'qualification': instance.qualification,
    };
