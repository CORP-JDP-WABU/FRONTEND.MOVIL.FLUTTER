// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_teacher_course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerTeacherCourseImpl _$$CareerTeacherCourseImplFromJson(
        Map<String, dynamic> json) =>
    _$CareerTeacherCourseImpl(
      course: json['course'] == null
          ? null
          : CareerCourse.fromJson(json['course'] as Map<String, dynamic>),
      teacher: json['teacher'] == null
          ? null
          : CareerTeacher.fromJson(json['teacher'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CareerTeacherCourseImplToJson(
        _$CareerTeacherCourseImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
      'teacher': instance.teacher,
    };
