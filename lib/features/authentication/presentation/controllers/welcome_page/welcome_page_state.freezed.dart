// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WelcomePageState {
  WelcomeStatus get status => throw _privateConstructorUsedError;
  WelcomePage get currentPage => throw _privateConstructorUsedError;
  List<WelcomePage> get pagesHistory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomePageStateCopyWith<WelcomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomePageStateCopyWith<$Res> {
  factory $WelcomePageStateCopyWith(
          WelcomePageState value, $Res Function(WelcomePageState) then) =
      _$WelcomePageStateCopyWithImpl<$Res, WelcomePageState>;
  @useResult
  $Res call(
      {WelcomeStatus status,
      WelcomePage currentPage,
      List<WelcomePage> pagesHistory});
}

/// @nodoc
class _$WelcomePageStateCopyWithImpl<$Res, $Val extends WelcomePageState>
    implements $WelcomePageStateCopyWith<$Res> {
  _$WelcomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPage = null,
    Object? pagesHistory = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WelcomeStatus,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as WelcomePage,
      pagesHistory: null == pagesHistory
          ? _value.pagesHistory
          : pagesHistory // ignore: cast_nullable_to_non_nullable
              as List<WelcomePage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WelcomePageStateImplCopyWith<$Res>
    implements $WelcomePageStateCopyWith<$Res> {
  factory _$$WelcomePageStateImplCopyWith(_$WelcomePageStateImpl value,
          $Res Function(_$WelcomePageStateImpl) then) =
      __$$WelcomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WelcomeStatus status,
      WelcomePage currentPage,
      List<WelcomePage> pagesHistory});
}

/// @nodoc
class __$$WelcomePageStateImplCopyWithImpl<$Res>
    extends _$WelcomePageStateCopyWithImpl<$Res, _$WelcomePageStateImpl>
    implements _$$WelcomePageStateImplCopyWith<$Res> {
  __$$WelcomePageStateImplCopyWithImpl(_$WelcomePageStateImpl _value,
      $Res Function(_$WelcomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPage = null,
    Object? pagesHistory = null,
  }) {
    return _then(_$WelcomePageStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WelcomeStatus,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as WelcomePage,
      pagesHistory: null == pagesHistory
          ? _value._pagesHistory
          : pagesHistory // ignore: cast_nullable_to_non_nullable
              as List<WelcomePage>,
    ));
  }
}

/// @nodoc

class _$WelcomePageStateImpl implements _WelcomePageState {
  const _$WelcomePageStateImpl(
      {this.status = WelcomeStatus.idle,
      this.currentPage = WelcomePage.none,
      final List<WelcomePage> pagesHistory = const [WelcomePage.none]})
      : _pagesHistory = pagesHistory;

  @override
  @JsonKey()
  final WelcomeStatus status;
  @override
  @JsonKey()
  final WelcomePage currentPage;
  final List<WelcomePage> _pagesHistory;
  @override
  @JsonKey()
  List<WelcomePage> get pagesHistory {
    if (_pagesHistory is EqualUnmodifiableListView) return _pagesHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pagesHistory);
  }

  @override
  String toString() {
    return 'WelcomePageState(status: $status, currentPage: $currentPage, pagesHistory: $pagesHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomePageStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._pagesHistory, _pagesHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, currentPage,
      const DeepCollectionEquality().hash(_pagesHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomePageStateImplCopyWith<_$WelcomePageStateImpl> get copyWith =>
      __$$WelcomePageStateImplCopyWithImpl<_$WelcomePageStateImpl>(
          this, _$identity);
}

abstract class _WelcomePageState implements WelcomePageState {
  const factory _WelcomePageState(
      {final WelcomeStatus status,
      final WelcomePage currentPage,
      final List<WelcomePage> pagesHistory}) = _$WelcomePageStateImpl;

  @override
  WelcomeStatus get status;
  @override
  WelcomePage get currentPage;
  @override
  List<WelcomePage> get pagesHistory;
  @override
  @JsonKey(ignore: true)
  _$$WelcomePageStateImplCopyWith<_$WelcomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
