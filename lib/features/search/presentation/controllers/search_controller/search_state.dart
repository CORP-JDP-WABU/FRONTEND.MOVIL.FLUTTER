import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/home/domain/domain.dart';
import 'package:wabu/features/search/domain/domain.dart';

part 'search_state.freezed.dart';

enum SearchStatus { loading, loaded, error }

enum SearchResultStatus { loading, loaded, error }

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(HomeDashboard()) HomeDashboard homeDashboard,
    @Default(SearchResult()) SearchResult searchResult,
    @Default('') String searchText,
    @Default(SearchStatus.loading) SearchStatus searchStatus,
    @Default(SearchResultStatus.loading) SearchResultStatus searchResultStatus,
    @Default(false) bool isLexicographicallyOrdered,
    @Default(false) bool isOrderedByQualification,
    @Default(1) int page,
  }) = _SearchState;
}