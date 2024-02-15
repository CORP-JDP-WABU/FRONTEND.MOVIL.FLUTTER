// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoursesSearchResultImpl _$$CoursesSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CoursesSearchResultImpl(
      idCourse: json['idCourse'] as String?,
      name: json['name'] as String?,
      countTeachers: json['countTeachers'] as int?,
      countComment: json['countComment'] as int?,
    );

Map<String, dynamic> _$$CoursesSearchResultImplToJson(
        _$CoursesSearchResultImpl instance) =>
    <String, dynamic>{
      'idCourse': instance.idCourse,
      'name': instance.name,
      'countTeachers': instance.countTeachers,
      'countComment': instance.countComment,
    };
