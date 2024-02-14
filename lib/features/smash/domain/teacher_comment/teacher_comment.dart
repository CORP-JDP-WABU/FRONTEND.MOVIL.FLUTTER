import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_comment.freezed.dart';
part 'teacher_comment.g.dart';

@freezed
class TeacherComment with _$TeacherComment {
  const factory TeacherComment({
    @Default('') String comment,
  }) = _TeacherComment;

  factory TeacherComment.fromJson(Map<String, dynamic> json) =>
      _$TeacherCommentFromJson(json);
}
