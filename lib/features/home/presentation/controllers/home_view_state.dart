import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_state.freezed.dart';

enum HomeViewStatus { loading, loaded, error, idle }

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    @Default(HomeViewStatus.loading) pageStatus,
  }) = _HomeViewState;
}