// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_teachers_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseTeacherResponseImpl _$$CourseTeacherResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseTeacherResponseImpl(
      course: json['course'] == null
          ? null
          : Course.fromJson(json['course'] as Map<String, dynamic>),
      teachers: (json['teachers'] as List<dynamic>?)
          ?.map((e) => CourseTeacher.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseTeacherResponseImplToJson(
        _$CourseTeacherResponseImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
      'teachers': instance.teachers,
    };
