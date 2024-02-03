// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qualification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Qualification _$QualificationFromJson(Map<String, dynamic> json) {
  return _Qualification.fromJson(json);
}

/// @nodoc
mixin _$Qualification {
  int? get code => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QualificationCopyWith<Qualification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationCopyWith<$Res> {
  factory $QualificationCopyWith(
          Qualification value, $Res Function(Qualification) then) =
      _$QualificationCopyWithImpl<$Res, Qualification>;
  @useResult
  $Res call({int? code, String? value});
}

/// @nodoc
class _$QualificationCopyWithImpl<$Res, $Val extends Qualification>
    implements $QualificationCopyWith<$Res> {
  _$QualificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QualificationImplCopyWith<$Res>
    implements $QualificationCopyWith<$Res> {
  factory _$$QualificationImplCopyWith(
          _$QualificationImpl value, $Res Function(_$QualificationImpl) then) =
      __$$QualificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? value});
}

/// @nodoc
class __$$QualificationImplCopyWithImpl<$Res>
    extends _$QualificationCopyWithImpl<$Res, _$QualificationImpl>
    implements _$$QualificationImplCopyWith<$Res> {
  __$$QualificationImplCopyWithImpl(
      _$QualificationImpl _value, $Res Function(_$QualificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? value = freezed,
  }) {
    return _then(_$QualificationImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QualificationImpl implements _Qualification {
  const _$QualificationImpl({this.code, this.value});

  factory _$QualificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$QualificationImplFromJson(json);

  @override
  final int? code;
  @override
  final String? value;

  @override
  String toString() {
    return 'Qualification(code: $code, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualificationImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QualificationImplCopyWith<_$QualificationImpl> get copyWith =>
      __$$QualificationImplCopyWithImpl<_$QualificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QualificationImplToJson(
      this,
    );
  }
}

abstract class _Qualification implements Qualification {
  const factory _Qualification({final int? code, final String? value}) =
      _$QualificationImpl;

  factory _Qualification.fromJson(Map<String, dynamic> json) =
      _$QualificationImpl.fromJson;

  @override
  int? get code;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$QualificationImplCopyWith<_$QualificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
