import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_dto.freezed.dart';
part 'response_dto.g.dart';

@Freezed(genericArgumentFactories: true)
class ResponseDto<T> with _$ResponseDto<T> {
  const factory ResponseDto({
    required String message,
    required String operation,
    required T data,
  }) = _ResponseDto<T>;

  factory ResponseDto.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) => _$ResponseDtoFromJson<T>(json, fromJsonT);
}
