import 'package:freezed_annotation/freezed_annotation.dart';

part 'ignore_teacher_response.freezed.dart';
part 'ignore_teacher_response.g.dart';

@freezed
class IgnoreTeacherResponse with _$IgnoreTeacherResponse {
  const factory IgnoreTeacherResponse({
    bool? isRemoveTeacherToList,
  }) = _IgnoreTeacherResponse;

  factory IgnoreTeacherResponse.fromJson(Map<String, dynamic> json) =>
      _$IgnoreTeacherResponseFromJson(json);
}
