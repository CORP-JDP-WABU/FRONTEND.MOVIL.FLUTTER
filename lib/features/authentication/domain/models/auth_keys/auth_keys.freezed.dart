// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthKeys _$AuthKeysFromJson(Map<String, dynamic> json) {
  return _AuthKeys.fromJson(json);
}

/// @nodoc
mixin _$AuthKeys {
  Keys get keys => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthKeysCopyWith<AuthKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthKeysCopyWith<$Res> {
  factory $AuthKeysCopyWith(AuthKeys value, $Res Function(AuthKeys) then) =
      _$AuthKeysCopyWithImpl<$Res, AuthKeys>;
  @useResult
  $Res call({Keys keys, String hash});

  $KeysCopyWith<$Res> get keys;
}

/// @nodoc
class _$AuthKeysCopyWithImpl<$Res, $Val extends AuthKeys>
    implements $AuthKeysCopyWith<$Res> {
  _$AuthKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = null,
    Object? hash = null,
  }) {
    return _then(_value.copyWith(
      keys: null == keys
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as Keys,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KeysCopyWith<$Res> get keys {
    return $KeysCopyWith<$Res>(_value.keys, (value) {
      return _then(_value.copyWith(keys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthKeysImplCopyWith<$Res>
    implements $AuthKeysCopyWith<$Res> {
  factory _$$AuthKeysImplCopyWith(
          _$AuthKeysImpl value, $Res Function(_$AuthKeysImpl) then) =
      __$$AuthKeysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Keys keys, String hash});

  @override
  $KeysCopyWith<$Res> get keys;
}

/// @nodoc
class __$$AuthKeysImplCopyWithImpl<$Res>
    extends _$AuthKeysCopyWithImpl<$Res, _$AuthKeysImpl>
    implements _$$AuthKeysImplCopyWith<$Res> {
  __$$AuthKeysImplCopyWithImpl(
      _$AuthKeysImpl _value, $Res Function(_$AuthKeysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = null,
    Object? hash = null,
  }) {
    return _then(_$AuthKeysImpl(
      keys: null == keys
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as Keys,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthKeysImpl implements _AuthKeys {
  const _$AuthKeysImpl({required this.keys, required this.hash});

  factory _$AuthKeysImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthKeysImplFromJson(json);

  @override
  final Keys keys;
  @override
  final String hash;

  @override
  String toString() {
    return 'AuthKeys(keys: $keys, hash: $hash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthKeysImpl &&
            (identical(other.keys, keys) || other.keys == keys) &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keys, hash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthKeysImplCopyWith<_$AuthKeysImpl> get copyWith =>
      __$$AuthKeysImplCopyWithImpl<_$AuthKeysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthKeysImplToJson(
      this,
    );
  }
}

abstract class _AuthKeys implements AuthKeys {
  const factory _AuthKeys(
      {required final Keys keys, required final String hash}) = _$AuthKeysImpl;

  factory _AuthKeys.fromJson(Map<String, dynamic> json) =
      _$AuthKeysImpl.fromJson;

  @override
  Keys get keys;
  @override
  String get hash;
  @override
  @JsonKey(ignore: true)
  _$$AuthKeysImplCopyWith<_$AuthKeysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
