// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_validation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CodeValidationState {
  String get code => throw _privateConstructorUsedError;
  String? get utilError => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  FormStatus get formStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CodeValidationStateCopyWith<CodeValidationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeValidationStateCopyWith<$Res> {
  factory $CodeValidationStateCopyWith(
          CodeValidationState value, $Res Function(CodeValidationState) then) =
      _$CodeValidationStateCopyWithImpl<$Res, CodeValidationState>;
  @useResult
  $Res call(
      {String code, String? utilError, bool isValid, FormStatus formStatus});
}

/// @nodoc
class _$CodeValidationStateCopyWithImpl<$Res, $Val extends CodeValidationState>
    implements $CodeValidationStateCopyWith<$Res> {
  _$CodeValidationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? utilError = freezed,
    Object? isValid = null,
    Object? formStatus = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      utilError: freezed == utilError
          ? _value.utilError
          : utilError // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeValidationStateImplCopyWith<$Res>
    implements $CodeValidationStateCopyWith<$Res> {
  factory _$$CodeValidationStateImplCopyWith(_$CodeValidationStateImpl value,
          $Res Function(_$CodeValidationStateImpl) then) =
      __$$CodeValidationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code, String? utilError, bool isValid, FormStatus formStatus});
}

/// @nodoc
class __$$CodeValidationStateImplCopyWithImpl<$Res>
    extends _$CodeValidationStateCopyWithImpl<$Res, _$CodeValidationStateImpl>
    implements _$$CodeValidationStateImplCopyWith<$Res> {
  __$$CodeValidationStateImplCopyWithImpl(_$CodeValidationStateImpl _value,
      $Res Function(_$CodeValidationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? utilError = freezed,
    Object? isValid = null,
    Object? formStatus = null,
  }) {
    return _then(_$CodeValidationStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      utilError: freezed == utilError
          ? _value.utilError
          : utilError // ignore: cast_nullable_to_non_nullable
              as String?,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc

class _$CodeValidationStateImpl implements _CodeValidationState {
  const _$CodeValidationStateImpl(
      {required this.code,
      this.utilError = null,
      this.isValid = false,
      this.formStatus = FormStatus.empty});

  @override
  final String code;
  @override
  @JsonKey()
  final String? utilError;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final FormStatus formStatus;

  @override
  String toString() {
    return 'CodeValidationState(code: $code, utilError: $utilError, isValid: $isValid, formStatus: $formStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeValidationStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.utilError, utilError) ||
                other.utilError == utilError) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, utilError, isValid, formStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeValidationStateImplCopyWith<_$CodeValidationStateImpl> get copyWith =>
      __$$CodeValidationStateImplCopyWithImpl<_$CodeValidationStateImpl>(
          this, _$identity);
}

abstract class _CodeValidationState implements CodeValidationState {
  const factory _CodeValidationState(
      {required final String code,
      final String? utilError,
      final bool isValid,
      final FormStatus formStatus}) = _$CodeValidationStateImpl;

  @override
  String get code;
  @override
  String? get utilError;
  @override
  bool get isValid;
  @override
  FormStatus get formStatus;
  @override
  @JsonKey(ignore: true)
  _$$CodeValidationStateImplCopyWith<_$CodeValidationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
