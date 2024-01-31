// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseDto<T> _$ResponseDtoFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponseDto<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponseDto<T> {
  String get message => throw _privateConstructorUsedError;
  String get operation => throw _privateConstructorUsedError;
  T get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDtoCopyWith<T, ResponseDto<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDtoCopyWith<T, $Res> {
  factory $ResponseDtoCopyWith(
          ResponseDto<T> value, $Res Function(ResponseDto<T>) then) =
      _$ResponseDtoCopyWithImpl<T, $Res, ResponseDto<T>>;
  @useResult
  $Res call({String message, String operation, T data});
}

/// @nodoc
class _$ResponseDtoCopyWithImpl<T, $Res, $Val extends ResponseDto<T>>
    implements $ResponseDtoCopyWith<T, $Res> {
  _$ResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? operation = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDtoImplCopyWith<T, $Res>
    implements $ResponseDtoCopyWith<T, $Res> {
  factory _$$ResponseDtoImplCopyWith(_$ResponseDtoImpl<T> value,
          $Res Function(_$ResponseDtoImpl<T>) then) =
      __$$ResponseDtoImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String message, String operation, T data});
}

/// @nodoc
class __$$ResponseDtoImplCopyWithImpl<T, $Res>
    extends _$ResponseDtoCopyWithImpl<T, $Res, _$ResponseDtoImpl<T>>
    implements _$$ResponseDtoImplCopyWith<T, $Res> {
  __$$ResponseDtoImplCopyWithImpl(
      _$ResponseDtoImpl<T> _value, $Res Function(_$ResponseDtoImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? operation = null,
    Object? data = freezed,
  }) {
    return _then(_$ResponseDtoImpl<T>(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResponseDtoImpl<T> implements _ResponseDto<T> {
  const _$ResponseDtoImpl(
      {required this.message, required this.operation, required this.data});

  factory _$ResponseDtoImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponseDtoImplFromJson(json, fromJsonT);

  @override
  final String message;
  @override
  final String operation;
  @override
  final T data;

  @override
  String toString() {
    return 'ResponseDto<$T>(message: $message, operation: $operation, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDtoImpl<T> &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, operation,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDtoImplCopyWith<T, _$ResponseDtoImpl<T>> get copyWith =>
      __$$ResponseDtoImplCopyWithImpl<T, _$ResponseDtoImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponseDtoImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResponseDto<T> implements ResponseDto<T> {
  const factory _ResponseDto(
      {required final String message,
      required final String operation,
      required final T data}) = _$ResponseDtoImpl<T>;

  factory _ResponseDto.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponseDtoImpl<T>.fromJson;

  @override
  String get message;
  @override
  String get operation;
  @override
  T get data;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDtoImplCopyWith<T, _$ResponseDtoImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
