// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerImpl _$$CareerImplFromJson(Map<String, dynamic> json) => _$CareerImpl(
      idCareer: json['idCareer'] as String?,
      name: json['name'] as String? ?? '',
      cicles: (json['cicles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CareerImplToJson(_$CareerImpl instance) =>
    <String, dynamic>{
      'idCareer': instance.idCareer,
      'name': instance.name,
      'cicles': instance.cicles,
    };
