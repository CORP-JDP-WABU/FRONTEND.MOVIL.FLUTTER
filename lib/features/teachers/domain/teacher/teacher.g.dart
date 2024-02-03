// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherImpl _$$TeacherImplFromJson(Map<String, dynamic> json) =>
    _$TeacherImpl(
      idTeacher: json['idTeacher'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      profileUrl: json['profileUrl'] as String?,
      information: json['information'] as String?,
      course: json['course'] == null
          ? null
          : TeacherCourse.fromJson(json['course'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeacherImplToJson(_$TeacherImpl instance) =>
    <String, dynamic>{
      'idTeacher': instance.idTeacher,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'profileUrl': instance.profileUrl,
      'information': instance.information,
      'course': instance.course,
    };
