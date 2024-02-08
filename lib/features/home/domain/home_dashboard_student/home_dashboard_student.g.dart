// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dashboard_student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDashboardStudentImpl _$$HomeDashboardStudentImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeDashboardStudentImpl(
      idStudent: json['idStudent'] as String?,
      points: json['points'] as int?,
      favoriteCourses: (json['favoriteCourses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$HomeDashboardStudentImplToJson(
        _$HomeDashboardStudentImpl instance) =>
    <String, dynamic>{
      'idStudent': instance.idStudent,
      'points': instance.points,
      'favoriteCourses': instance.favoriteCourses,
    };
