import 'package:freezed_annotation/freezed_annotation.dart';

part 'career.freezed.dart';
part 'career.g.dart';

@freezed
class Career with _$Career {
  const factory Career({
    String? idCareer,
    @Default('') String name,
    @Default([]) List<String> cicles,
  }) = _Career;

  factory Career.fromJson(Map<String, dynamic> json) => _$CareerFromJson(json);
}
