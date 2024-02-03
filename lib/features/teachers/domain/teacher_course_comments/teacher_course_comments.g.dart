// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_course_comments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherCourseCommentsImpl _$$TeacherCourseCommentsImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherCourseCommentsImpl(
      idUniversity: json['idUniversity'] as String?,
      idTeacher: json['idTeacher'] as String?,
      idCourse: json['idCourse'] as String?,
      students: (json['students'] as List<dynamic>?)
          ?.map((e) =>
              TeacherCourseStudentComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TeacherCourseCommentsImplToJson(
        _$TeacherCourseCommentsImpl instance) =>
    <String, dynamic>{
      'idUniversity': instance.idUniversity,
      'idTeacher': instance.idTeacher,
      'idCourse': instance.idCourse,
      'students': instance.students,
    };
