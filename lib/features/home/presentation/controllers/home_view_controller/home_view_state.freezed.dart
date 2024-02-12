// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeViewState {
  Student get student => throw _privateConstructorUsedError;
  HomeDashboard get homeDashboard => throw _privateConstructorUsedError;
  HomeStatus get homeStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewStateCopyWith<HomeViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewStateCopyWith<$Res> {
  factory $HomeViewStateCopyWith(
          HomeViewState value, $Res Function(HomeViewState) then) =
      _$HomeViewStateCopyWithImpl<$Res, HomeViewState>;
  @useResult
  $Res call(
      {Student student, HomeDashboard homeDashboard, HomeStatus homeStatus});

  $StudentCopyWith<$Res> get student;
  $HomeDashboardCopyWith<$Res> get homeDashboard;
}

/// @nodoc
class _$HomeViewStateCopyWithImpl<$Res, $Val extends HomeViewState>
    implements $HomeViewStateCopyWith<$Res> {
  _$HomeViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? homeDashboard = null,
    Object? homeStatus = null,
  }) {
    return _then(_value.copyWith(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      homeDashboard: null == homeDashboard
          ? _value.homeDashboard
          : homeDashboard // ignore: cast_nullable_to_non_nullable
              as HomeDashboard,
      homeStatus: null == homeStatus
          ? _value.homeStatus
          : homeStatus // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeDashboardCopyWith<$Res> get homeDashboard {
    return $HomeDashboardCopyWith<$Res>(_value.homeDashboard, (value) {
      return _then(_value.copyWith(homeDashboard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeViewStateImplCopyWith<$Res>
    implements $HomeViewStateCopyWith<$Res> {
  factory _$$HomeViewStateImplCopyWith(
          _$HomeViewStateImpl value, $Res Function(_$HomeViewStateImpl) then) =
      __$$HomeViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Student student, HomeDashboard homeDashboard, HomeStatus homeStatus});

  @override
  $StudentCopyWith<$Res> get student;
  @override
  $HomeDashboardCopyWith<$Res> get homeDashboard;
}

/// @nodoc
class __$$HomeViewStateImplCopyWithImpl<$Res>
    extends _$HomeViewStateCopyWithImpl<$Res, _$HomeViewStateImpl>
    implements _$$HomeViewStateImplCopyWith<$Res> {
  __$$HomeViewStateImplCopyWithImpl(
      _$HomeViewStateImpl _value, $Res Function(_$HomeViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? homeDashboard = null,
    Object? homeStatus = null,
  }) {
    return _then(_$HomeViewStateImpl(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      homeDashboard: null == homeDashboard
          ? _value.homeDashboard
          : homeDashboard // ignore: cast_nullable_to_non_nullable
              as HomeDashboard,
      homeStatus: null == homeStatus
          ? _value.homeStatus
          : homeStatus // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
    ));
  }
}

/// @nodoc

class _$HomeViewStateImpl implements _HomeViewState {
  const _$HomeViewStateImpl(
      {this.student = const Student(),
      this.homeDashboard = const HomeDashboard(),
      this.homeStatus = HomeStatus.loading});

  @override
  @JsonKey()
  final Student student;
  @override
  @JsonKey()
  final HomeDashboard homeDashboard;
  @override
  @JsonKey()
  final HomeStatus homeStatus;

  @override
  String toString() {
    return 'HomeViewState(student: $student, homeDashboard: $homeDashboard, homeStatus: $homeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewStateImpl &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.homeDashboard, homeDashboard) ||
                other.homeDashboard == homeDashboard) &&
            (identical(other.homeStatus, homeStatus) ||
                other.homeStatus == homeStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, student, homeDashboard, homeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      __$$HomeViewStateImplCopyWithImpl<_$HomeViewStateImpl>(this, _$identity);
}

abstract class _HomeViewState implements HomeViewState {
  const factory _HomeViewState(
      {final Student student,
      final HomeDashboard homeDashboard,
      final HomeStatus homeStatus}) = _$HomeViewStateImpl;

  @override
  Student get student;
  @override
  HomeDashboard get homeDashboard;
  @override
  HomeStatus get homeStatus;
  @override
  @JsonKey(ignore: true)
  _$$HomeViewStateImplCopyWith<_$HomeViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
