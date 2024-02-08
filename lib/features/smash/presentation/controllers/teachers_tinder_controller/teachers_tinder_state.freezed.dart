// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teachers_tinder_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeachersTinderState {
  List<SmashSuggestion>? get smashSuggestions =>
      throw _privateConstructorUsedError;
  dynamic get pageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeachersTinderStateCopyWith<TeachersTinderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeachersTinderStateCopyWith<$Res> {
  factory $TeachersTinderStateCopyWith(
          TeachersTinderState value, $Res Function(TeachersTinderState) then) =
      _$TeachersTinderStateCopyWithImpl<$Res, TeachersTinderState>;
  @useResult
  $Res call({List<SmashSuggestion>? smashSuggestions, dynamic pageStatus});
}

/// @nodoc
class _$TeachersTinderStateCopyWithImpl<$Res, $Val extends TeachersTinderState>
    implements $TeachersTinderStateCopyWith<$Res> {
  _$TeachersTinderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smashSuggestions = freezed,
    Object? pageStatus = freezed,
  }) {
    return _then(_value.copyWith(
      smashSuggestions: freezed == smashSuggestions
          ? _value.smashSuggestions
          : smashSuggestions // ignore: cast_nullable_to_non_nullable
              as List<SmashSuggestion>?,
      pageStatus: freezed == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeachersTinderStateImplCopyWith<$Res>
    implements $TeachersTinderStateCopyWith<$Res> {
  factory _$$TeachersTinderStateImplCopyWith(_$TeachersTinderStateImpl value,
          $Res Function(_$TeachersTinderStateImpl) then) =
      __$$TeachersTinderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SmashSuggestion>? smashSuggestions, dynamic pageStatus});
}

/// @nodoc
class __$$TeachersTinderStateImplCopyWithImpl<$Res>
    extends _$TeachersTinderStateCopyWithImpl<$Res, _$TeachersTinderStateImpl>
    implements _$$TeachersTinderStateImplCopyWith<$Res> {
  __$$TeachersTinderStateImplCopyWithImpl(_$TeachersTinderStateImpl _value,
      $Res Function(_$TeachersTinderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smashSuggestions = freezed,
    Object? pageStatus = freezed,
  }) {
    return _then(_$TeachersTinderStateImpl(
      smashSuggestions: freezed == smashSuggestions
          ? _value._smashSuggestions
          : smashSuggestions // ignore: cast_nullable_to_non_nullable
              as List<SmashSuggestion>?,
      pageStatus: freezed == pageStatus ? _value.pageStatus! : pageStatus,
    ));
  }
}

/// @nodoc

class _$TeachersTinderStateImpl implements _TeachersTinderState {
  const _$TeachersTinderStateImpl(
      {final List<SmashSuggestion>? smashSuggestions,
      this.pageStatus = TeachersTinderStatus.loading})
      : _smashSuggestions = smashSuggestions;

  final List<SmashSuggestion>? _smashSuggestions;
  @override
  List<SmashSuggestion>? get smashSuggestions {
    final value = _smashSuggestions;
    if (value == null) return null;
    if (_smashSuggestions is EqualUnmodifiableListView)
      return _smashSuggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic pageStatus;

  @override
  String toString() {
    return 'TeachersTinderState(smashSuggestions: $smashSuggestions, pageStatus: $pageStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeachersTinderStateImpl &&
            const DeepCollectionEquality()
                .equals(other._smashSuggestions, _smashSuggestions) &&
            const DeepCollectionEquality()
                .equals(other.pageStatus, pageStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_smashSuggestions),
      const DeepCollectionEquality().hash(pageStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeachersTinderStateImplCopyWith<_$TeachersTinderStateImpl> get copyWith =>
      __$$TeachersTinderStateImplCopyWithImpl<_$TeachersTinderStateImpl>(
          this, _$identity);
}

abstract class _TeachersTinderState implements TeachersTinderState {
  const factory _TeachersTinderState(
      {final List<SmashSuggestion>? smashSuggestions,
      final dynamic pageStatus}) = _$TeachersTinderStateImpl;

  @override
  List<SmashSuggestion>? get smashSuggestions;
  @override
  dynamic get pageStatus;
  @override
  @JsonKey(ignore: true)
  _$$TeachersTinderStateImplCopyWith<_$TeachersTinderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
