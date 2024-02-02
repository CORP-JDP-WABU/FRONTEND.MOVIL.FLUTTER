// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_course_qualification_required.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherCourseQualificationRequiredImpl
    _$$TeacherCourseQualificationRequiredImplFromJson(
            Map<String, dynamic> json) =>
        _$TeacherCourseQualificationRequiredImpl(
          averageQualification:
              (json['averageQualification'] as num?)?.toDouble(),
          qualification: json['qualification'] == null
              ? null
              : Qualification.fromJson(
                  json['qualification'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$TeacherCourseQualificationRequiredImplToJson(
        _$TeacherCourseQualificationRequiredImpl instance) =>
    <String, dynamic>{
      'averageQualification': instance.averageQualification,
      'qualification': instance.qualification,
    };
