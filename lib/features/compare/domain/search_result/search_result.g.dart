// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      teacher: (json['teacher'] as List<dynamic>?)
          ?.map((e) => TeachersSearchResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalTeacher: json['totalTeacher'] as int?,
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'teacher': instance.teacher,
      'totalTeacher': instance.totalTeacher,
    };
