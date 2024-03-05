// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      course: (json['course'] as List<dynamic>?)
          ?.map((e) => CoursesSearchResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCourse: json['totalCourse'] as int?,
      teacher: (json['teacher'] as List<dynamic>?)
          ?.map((e) => TeachersSearchResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalTeacher: json['totalTeacher'] as int?,
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
      'totalCourse': instance.totalCourse,
      'teacher': instance.teacher,
      'totalTeacher': instance.totalTeacher,
    };
