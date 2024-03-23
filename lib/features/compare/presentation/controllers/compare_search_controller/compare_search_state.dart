import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wabu/features/compare/domain/domain.dart';

part 'compare_search_state.freezed.dart';

enum SearchStatus {
  initial,
  idle,
  loading,
  loaded,
  error,
}

@freezed
class CompareSearchState with _$CompareSearchState {
  const factory CompareSearchState({
    @Default('') String searchText,
    @Default(1) int pageIndex,
    @Default(SearchResult()) SearchResult searchResult,
    @Default(<String>[]) List<String> selectedTeacherIds,
    @Default(SearchStatus.initial) SearchStatus searchStatus,
  }) = _CompareSearchState;
}
