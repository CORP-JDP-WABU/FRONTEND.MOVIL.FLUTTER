// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Keys _$KeysFromJson(Map<String, dynamic> json) {
  return _Keys.fromJson(json);
}

/// @nodoc
mixin _$Keys {
  String get x1 => throw _privateConstructorUsedError;
  String get x2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeysCopyWith<Keys> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeysCopyWith<$Res> {
  factory $KeysCopyWith(Keys value, $Res Function(Keys) then) =
      _$KeysCopyWithImpl<$Res, Keys>;
  @useResult
  $Res call({String x1, String x2});
}

/// @nodoc
class _$KeysCopyWithImpl<$Res, $Val extends Keys>
    implements $KeysCopyWith<$Res> {
  _$KeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x1 = null,
    Object? x2 = null,
  }) {
    return _then(_value.copyWith(
      x1: null == x1
          ? _value.x1
          : x1 // ignore: cast_nullable_to_non_nullable
              as String,
      x2: null == x2
          ? _value.x2
          : x2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeysImplCopyWith<$Res> implements $KeysCopyWith<$Res> {
  factory _$$KeysImplCopyWith(
          _$KeysImpl value, $Res Function(_$KeysImpl) then) =
      __$$KeysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String x1, String x2});
}

/// @nodoc
class __$$KeysImplCopyWithImpl<$Res>
    extends _$KeysCopyWithImpl<$Res, _$KeysImpl>
    implements _$$KeysImplCopyWith<$Res> {
  __$$KeysImplCopyWithImpl(_$KeysImpl _value, $Res Function(_$KeysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x1 = null,
    Object? x2 = null,
  }) {
    return _then(_$KeysImpl(
      x1: null == x1
          ? _value.x1
          : x1 // ignore: cast_nullable_to_non_nullable
              as String,
      x2: null == x2
          ? _value.x2
          : x2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeysImpl implements _Keys {
  const _$KeysImpl({required this.x1, required this.x2});

  factory _$KeysImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeysImplFromJson(json);

  @override
  final String x1;
  @override
  final String x2;

  @override
  String toString() {
    return 'Keys(x1: $x1, x2: $x2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeysImpl &&
            (identical(other.x1, x1) || other.x1 == x1) &&
            (identical(other.x2, x2) || other.x2 == x2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x1, x2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeysImplCopyWith<_$KeysImpl> get copyWith =>
      __$$KeysImplCopyWithImpl<_$KeysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeysImplToJson(
      this,
    );
  }
}

abstract class _Keys implements Keys {
  const factory _Keys({required final String x1, required final String x2}) =
      _$KeysImpl;

  factory _Keys.fromJson(Map<String, dynamic> json) = _$KeysImpl.fromJson;

  @override
  String get x1;
  @override
  String get x2;
  @override
  @JsonKey(ignore: true)
  _$$KeysImplCopyWith<_$KeysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
