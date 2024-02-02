// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_validation_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CodeValidationResult _$CodeValidationResultFromJson(Map<String, dynamic> json) {
  return _CodeValidationResult.fromJson(json);
}

/// @nodoc
mixin _$CodeValidationResult {
  String? get idStudent => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeValidationResultCopyWith<CodeValidationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeValidationResultCopyWith<$Res> {
  factory $CodeValidationResultCopyWith(CodeValidationResult value,
          $Res Function(CodeValidationResult) then) =
      _$CodeValidationResultCopyWithImpl<$Res, CodeValidationResult>;
  @useResult
  $Res call({String? idStudent, bool isValid});
}

/// @nodoc
class _$CodeValidationResultCopyWithImpl<$Res,
        $Val extends CodeValidationResult>
    implements $CodeValidationResultCopyWith<$Res> {
  _$CodeValidationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStudent = freezed,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      idStudent: freezed == idStudent
          ? _value.idStudent
          : idStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeValidationResultImplCopyWith<$Res>
    implements $CodeValidationResultCopyWith<$Res> {
  factory _$$CodeValidationResultImplCopyWith(_$CodeValidationResultImpl value,
          $Res Function(_$CodeValidationResultImpl) then) =
      __$$CodeValidationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? idStudent, bool isValid});
}

/// @nodoc
class __$$CodeValidationResultImplCopyWithImpl<$Res>
    extends _$CodeValidationResultCopyWithImpl<$Res, _$CodeValidationResultImpl>
    implements _$$CodeValidationResultImplCopyWith<$Res> {
  __$$CodeValidationResultImplCopyWithImpl(_$CodeValidationResultImpl _value,
      $Res Function(_$CodeValidationResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStudent = freezed,
    Object? isValid = null,
  }) {
    return _then(_$CodeValidationResultImpl(
      idStudent: freezed == idStudent
          ? _value.idStudent
          : idStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeValidationResultImpl implements _CodeValidationResult {
  const _$CodeValidationResultImpl(
      {this.idStudent = null, required this.isValid});

  factory _$CodeValidationResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeValidationResultImplFromJson(json);

  @override
  @JsonKey()
  final String? idStudent;
  @override
  final bool isValid;

  @override
  String toString() {
    return 'CodeValidationResult(idStudent: $idStudent, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeValidationResultImpl &&
            (identical(other.idStudent, idStudent) ||
                other.idStudent == idStudent) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idStudent, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeValidationResultImplCopyWith<_$CodeValidationResultImpl>
      get copyWith =>
          __$$CodeValidationResultImplCopyWithImpl<_$CodeValidationResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeValidationResultImplToJson(
      this,
    );
  }
}

abstract class _CodeValidationResult implements CodeValidationResult {
  const factory _CodeValidationResult(
      {final String? idStudent,
      required final bool isValid}) = _$CodeValidationResultImpl;

  factory _CodeValidationResult.fromJson(Map<String, dynamic> json) =
      _$CodeValidationResultImpl.fromJson;

  @override
  String? get idStudent;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$CodeValidationResultImplCopyWith<_$CodeValidationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
