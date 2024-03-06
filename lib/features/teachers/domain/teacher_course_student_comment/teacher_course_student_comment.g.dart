// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_course_student_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherCourseStudentCommentImpl _$$TeacherCourseStudentCommentImplFromJson(
        Map<String, dynamic> json) =>
    _$TeacherCourseStudentCommentImpl(
      (json['likes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['dislikes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['photoUrl'] as String?,
      json['fullName'] as String?,
      json['comment'] as String?,
      json['createdAtString'] as String?,
    );

Map<String, dynamic> _$$TeacherCourseStudentCommentImplToJson(
        _$TeacherCourseStudentCommentImpl instance) =>
    <String, dynamic>{
      'likes': instance.likes,
      'dislikes': instance.dislikes,
      'photoUrl': instance.photoUrl,
      'fullName': instance.fullName,
      'comment': instance.comment,
      'createdAtString': instance.createdAtString,
    };
