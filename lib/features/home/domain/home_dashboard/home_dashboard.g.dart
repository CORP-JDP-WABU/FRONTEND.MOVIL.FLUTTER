// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDashboardImpl _$$HomeDashboardImplFromJson(Map<String, dynamic> json) =>
    _$HomeDashboardImpl(
      university: json['university'] as String?,
      kpis: json['kpis'] == null
          ? null
          : HomeDashboardKpis.fromJson(json['kpis'] as Map<String, dynamic>),
      student: json['student'] == null
          ? null
          : HomeDashboardStudent.fromJson(
              json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeDashboardImplToJson(_$HomeDashboardImpl instance) =>
    <String, dynamic>{
      'university': instance.university,
      'kpis': instance.kpis,
      'student': instance.student,
    };
