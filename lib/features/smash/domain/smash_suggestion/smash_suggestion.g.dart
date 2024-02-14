// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smash_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SmashSuggestionImpl _$$SmashSuggestionImplFromJson(
        Map<String, dynamic> json) =>
    _$SmashSuggestionImpl(
      course: json['course'] == null
          ? null
          : SmashSuggestionCourse.fromJson(
              json['course'] as Map<String, dynamic>),
      teacher: json['teacher'] == null
          ? null
          : SmashSuggestionTeacher.fromJson(
              json['teacher'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SmashSuggestionImplToJson(
        _$SmashSuggestionImpl instance) =>
    <String, dynamic>{
      'course': instance.course,
      'teacher': instance.teacher,
    };
