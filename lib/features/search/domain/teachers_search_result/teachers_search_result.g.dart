// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teachers_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeachersSearchResultImpl _$$TeachersSearchResultImplFromJson(
        Map<String, dynamic> json) =>
    _$TeachersSearchResultImpl(
      idTeacher: json['idTeacher'] as String?,
      photoUrl: json['photoUrl'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      manyComments: json['manyComments'] as int?,
      manyQualifications: json['manyQualifications'] as int?,
      manyAverageQualifications:
          (json['manyAverageQualifications'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TeachersSearchResultImplToJson(
        _$TeachersSearchResultImpl instance) =>
    <String, dynamic>{
      'idTeacher': instance.idTeacher,
      'photoUrl': instance.photoUrl,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'manyComments': instance.manyComments,
      'manyQualifications': instance.manyQualifications,
      'manyAverageQualifications': instance.manyAverageQualifications,
    };
