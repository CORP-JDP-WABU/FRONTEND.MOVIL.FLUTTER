import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/home/domain/domain.dart';

part 'search_state.freezed.dart';

enum SearchStatus { loading, loaded, error }

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(HomeDashboard()) HomeDashboard homeDashboard,
    @Default(SearchStatus.loading) SearchStatus searchStatus,
  }) = _SearchState;
}