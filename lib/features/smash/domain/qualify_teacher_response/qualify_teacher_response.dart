import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualify_teacher_response.freezed.dart';
part 'qualify_teacher_response.g.dart';

@freezed
class QualifyTeacherResponse with _$QualifyTeacherResponse {
  const factory QualifyTeacherResponse({
    bool? isRemoveTeacherToList,
  }) = _QualifyTeacherResponse;

  factory QualifyTeacherResponse.fromJson(Map<String, dynamic> json) =>
      _$QualifyTeacherResponseFromJson(json);
}
