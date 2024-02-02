// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EncryptedForm _$EncryptedFormFromJson(Map<String, dynamic> json) {
  return _EncryptedForm.fromJson(json);
}

/// @nodoc
mixin _$EncryptedForm {
  String get hash => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedFormCopyWith<EncryptedForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedFormCopyWith<$Res> {
  factory $EncryptedFormCopyWith(
          EncryptedForm value, $Res Function(EncryptedForm) then) =
      _$EncryptedFormCopyWithImpl<$Res, EncryptedForm>;
  @useResult
  $Res call({String hash, String data});
}

/// @nodoc
class _$EncryptedFormCopyWithImpl<$Res, $Val extends EncryptedForm>
    implements $EncryptedFormCopyWith<$Res> {
  _$EncryptedFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EncryptedFormImplCopyWith<$Res>
    implements $EncryptedFormCopyWith<$Res> {
  factory _$$EncryptedFormImplCopyWith(
          _$EncryptedFormImpl value, $Res Function(_$EncryptedFormImpl) then) =
      __$$EncryptedFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hash, String data});
}

/// @nodoc
class __$$EncryptedFormImplCopyWithImpl<$Res>
    extends _$EncryptedFormCopyWithImpl<$Res, _$EncryptedFormImpl>
    implements _$$EncryptedFormImplCopyWith<$Res> {
  __$$EncryptedFormImplCopyWithImpl(
      _$EncryptedFormImpl _value, $Res Function(_$EncryptedFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
    Object? data = null,
  }) {
    return _then(_$EncryptedFormImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptedFormImpl implements _EncryptedForm {
  const _$EncryptedFormImpl({required this.hash, required this.data});

  factory _$EncryptedFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptedFormImplFromJson(json);

  @override
  final String hash;
  @override
  final String data;

  @override
  String toString() {
    return 'EncryptedForm(hash: $hash, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptedFormImpl &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, hash, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedFormImplCopyWith<_$EncryptedFormImpl> get copyWith =>
      __$$EncryptedFormImplCopyWithImpl<_$EncryptedFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedFormImplToJson(
      this,
    );
  }
}

abstract class _EncryptedForm implements EncryptedForm {
  const factory _EncryptedForm(
      {required final String hash,
      required final String data}) = _$EncryptedFormImpl;

  factory _EncryptedForm.fromJson(Map<String, dynamic> json) =
      _$EncryptedFormImpl.fromJson;

  @override
  String get hash;
  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$EncryptedFormImplCopyWith<_$EncryptedFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
