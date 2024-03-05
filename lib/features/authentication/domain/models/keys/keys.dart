import 'package:freezed_annotation/freezed_annotation.dart';

part 'keys.freezed.dart';
part 'keys.g.dart';

@freezed
class Keys with _$Keys {
  const factory Keys({
    required String x1,
    required String x2,
  }) = _Keys;

  factory Keys.fromJson(Map<String, dynamic> json) => _$KeysFromJson(json);
}
