// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compare_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompareSearchState {
  String get searchText => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  SearchResult get searchResult => throw _privateConstructorUsedError;
  List<String> get selectedTeacherIds => throw _privateConstructorUsedError;
  SearchStatus get searchStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompareSearchStateCopyWith<CompareSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompareSearchStateCopyWith<$Res> {
  factory $CompareSearchStateCopyWith(
          CompareSearchState value, $Res Function(CompareSearchState) then) =
      _$CompareSearchStateCopyWithImpl<$Res, CompareSearchState>;
  @useResult
  $Res call(
      {String searchText,
      int pageIndex,
      SearchResult searchResult,
      List<String> selectedTeacherIds,
      SearchStatus searchStatus});

  $SearchResultCopyWith<$Res> get searchResult;
}

/// @nodoc
class _$CompareSearchStateCopyWithImpl<$Res, $Val extends CompareSearchState>
    implements $CompareSearchStateCopyWith<$Res> {
  _$CompareSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? pageIndex = null,
    Object? searchResult = null,
    Object? selectedTeacherIds = null,
    Object? searchStatus = null,
  }) {
    return _then(_value.copyWith(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResult,
      selectedTeacherIds: null == selectedTeacherIds
          ? _value.selectedTeacherIds
          : selectedTeacherIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchStatus: null == searchStatus
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResultCopyWith<$Res> get searchResult {
    return $SearchResultCopyWith<$Res>(_value.searchResult, (value) {
      return _then(_value.copyWith(searchResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompareSearchStateImplCopyWith<$Res>
    implements $CompareSearchStateCopyWith<$Res> {
  factory _$$CompareSearchStateImplCopyWith(_$CompareSearchStateImpl value,
          $Res Function(_$CompareSearchStateImpl) then) =
      __$$CompareSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String searchText,
      int pageIndex,
      SearchResult searchResult,
      List<String> selectedTeacherIds,
      SearchStatus searchStatus});

  @override
  $SearchResultCopyWith<$Res> get searchResult;
}

/// @nodoc
class __$$CompareSearchStateImplCopyWithImpl<$Res>
    extends _$CompareSearchStateCopyWithImpl<$Res, _$CompareSearchStateImpl>
    implements _$$CompareSearchStateImplCopyWith<$Res> {
  __$$CompareSearchStateImplCopyWithImpl(_$CompareSearchStateImpl _value,
      $Res Function(_$CompareSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? pageIndex = null,
    Object? searchResult = null,
    Object? selectedTeacherIds = null,
    Object? searchStatus = null,
  }) {
    return _then(_$CompareSearchStateImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SearchResult,
      selectedTeacherIds: null == selectedTeacherIds
          ? _value._selectedTeacherIds
          : selectedTeacherIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      searchStatus: null == searchStatus
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
    ));
  }
}

/// @nodoc

class _$CompareSearchStateImpl implements _CompareSearchState {
  const _$CompareSearchStateImpl(
      {this.searchText = '',
      this.pageIndex = 1,
      this.searchResult = const SearchResult(),
      final List<String> selectedTeacherIds = const <String>[],
      this.searchStatus = SearchStatus.initial})
      : _selectedTeacherIds = selectedTeacherIds;

  @override
  @JsonKey()
  final String searchText;
  @override
  @JsonKey()
  final int pageIndex;
  @override
  @JsonKey()
  final SearchResult searchResult;
  final List<String> _selectedTeacherIds;
  @override
  @JsonKey()
  List<String> get selectedTeacherIds {
    if (_selectedTeacherIds is EqualUnmodifiableListView)
      return _selectedTeacherIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTeacherIds);
  }

  @override
  @JsonKey()
  final SearchStatus searchStatus;

  @override
  String toString() {
    return 'CompareSearchState(searchText: $searchText, pageIndex: $pageIndex, searchResult: $searchResult, selectedTeacherIds: $selectedTeacherIds, searchStatus: $searchStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompareSearchStateImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult) &&
            const DeepCollectionEquality()
                .equals(other._selectedTeacherIds, _selectedTeacherIds) &&
            (identical(other.searchStatus, searchStatus) ||
                other.searchStatus == searchStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchText,
      pageIndex,
      searchResult,
      const DeepCollectionEquality().hash(_selectedTeacherIds),
      searchStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompareSearchStateImplCopyWith<_$CompareSearchStateImpl> get copyWith =>
      __$$CompareSearchStateImplCopyWithImpl<_$CompareSearchStateImpl>(
          this, _$identity);
}

abstract class _CompareSearchState implements CompareSearchState {
  const factory _CompareSearchState(
      {final String searchText,
      final int pageIndex,
      final SearchResult searchResult,
      final List<String> selectedTeacherIds,
      final SearchStatus searchStatus}) = _$CompareSearchStateImpl;

  @override
  String get searchText;
  @override
  int get pageIndex;
  @override
  SearchResult get searchResult;
  @override
  List<String> get selectedTeacherIds;
  @override
  SearchStatus get searchStatus;
  @override
  @JsonKey(ignore: true)
  _$$CompareSearchStateImplCopyWith<_$CompareSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
