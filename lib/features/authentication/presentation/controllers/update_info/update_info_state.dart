import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/authentication/domain/models/career/career.dart';
import 'package:wabu/features/authentication/domain/models/university/university.dart';

part 'update_info_state.freezed.dart';

enum Status { loading, loaded, valid }

@freezed
class UpdateInfoState with _$UpdateInfoState {
  const factory UpdateInfoState({
    @Default('') String photo,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String aboutMe,
    @Default([]) List<University> universities,
    @Default([Career(name: 'Escoge tu carrera')]) List<Career> careers,
    @Default([null]) List<String?> cycles,
    @Default(null) String? univeristy,
    @Default(null) String? career,
    @Default(null) String? cycle,
    @Default(false) bool isTermsAccepted,
    @Default(Status.loading) Status status,
    @Default(false) bool isInfoCompleted,
  }) = _UpdateInfoState;
}
