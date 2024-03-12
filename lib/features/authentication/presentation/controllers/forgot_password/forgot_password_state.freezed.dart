// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordState {
  Email get email => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  FormStatus get formStatus => throw _privateConstructorUsedError;
  ForgotPasswordStatus get forgotPasswordStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {Email email,
      bool isValid,
      FormStatus formStatus,
      ForgotPasswordStatus forgotPasswordStatus});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isValid = null,
    Object? formStatus = null,
    Object? forgotPasswordStatus = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _value.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(_$ForgotPasswordStateImpl value,
          $Res Function(_$ForgotPasswordStateImpl) then) =
      __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Email email,
      bool isValid,
      FormStatus formStatus,
      ForgotPasswordStatus forgotPasswordStatus});
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(_$ForgotPasswordStateImpl _value,
      $Res Function(_$ForgotPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isValid = null,
    Object? formStatus = null,
    Object? forgotPasswordStatus = null,
  }) {
    return _then(_$ForgotPasswordStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      forgotPasswordStatus: null == forgotPasswordStatus
          ? _value.forgotPasswordStatus
          : forgotPasswordStatus // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStatus,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordStateImpl implements _ForgotPasswordState {
  const _$ForgotPasswordStateImpl(
      {required this.email,
      this.isValid = false,
      this.formStatus = FormStatus.empty,
      this.forgotPasswordStatus = ForgotPasswordStatus.initial});

  @override
  final Email email;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final FormStatus formStatus;
  @override
  @JsonKey()
  final ForgotPasswordStatus forgotPasswordStatus;

  @override
  String toString() {
    return 'ForgotPasswordState(email: $email, isValid: $isValid, formStatus: $formStatus, forgotPasswordStatus: $forgotPasswordStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus) &&
            (identical(other.forgotPasswordStatus, forgotPasswordStatus) ||
                other.forgotPasswordStatus == forgotPasswordStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, isValid, formStatus, forgotPasswordStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
          {required final Email email,
          final bool isValid,
          final FormStatus formStatus,
          final ForgotPasswordStatus forgotPasswordStatus}) =
      _$ForgotPasswordStateImpl;

  @override
  Email get email;
  @override
  bool get isValid;
  @override
  FormStatus get formStatus;
  @override
  ForgotPasswordStatus get forgotPasswordStatus;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}