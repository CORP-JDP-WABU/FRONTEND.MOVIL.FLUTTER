import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_teacher_response.freezed.dart';
part 'comment_teacher_response.g.dart';

@freezed
class CommentTeacherResponse with _$CommentTeacherResponse {
  const factory CommentTeacherResponse({
    bool? isCommentCreate,
  }) = _CommentTeacherResponse;

  factory CommentTeacherResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentTeacherResponseFromJson(json);
}
