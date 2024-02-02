import 'package:freezed_annotation/freezed_annotation.dart';

part 'qualification.freezed.dart';
part 'qualification.g.dart';

@freezed
class Qualification with _$Qualification {
  const factory Qualification({
    int? code,
    String? value,
  }) = _Qualification;

  factory Qualification.fromJson(Map<String, dynamic> json) => _$QualificationFromJson(json);
}