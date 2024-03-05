// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UniversityImpl _$$UniversityImplFromJson(Map<String, dynamic> json) =>
    _$UniversityImpl(
      idUniversity: json['idUniversity'] as String?,
      name: json['name'] as String? ?? '',
      careers: (json['careers'] as List<dynamic>?)
              ?.map((e) => Career.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$UniversityImplToJson(_$UniversityImpl instance) =>
    <String, dynamic>{
      'idUniversity': instance.idUniversity,
      'name': instance.name,
      'careers': instance.careers,
    };
