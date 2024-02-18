// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewPasswordState {
  NewPassword get newPassword => throw _privateConstructorUsedError;
  Password get confirmNewPassword => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  FormStatus get formStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewPasswordStateCopyWith<NewPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPasswordStateCopyWith<$Res> {
  factory $NewPasswordStateCopyWith(
          NewPasswordState value, $Res Function(NewPasswordState) then) =
      _$NewPasswordStateCopyWithImpl<$Res, NewPasswordState>;
  @useResult
  $Res call(
      {NewPassword newPassword,
      Password confirmNewPassword,
      bool isValid,
      FormStatus formStatus});
}

/// @nodoc
class _$NewPasswordStateCopyWithImpl<$Res, $Val extends NewPasswordState>
    implements $NewPasswordStateCopyWith<$Res> {
  _$NewPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
    Object? confirmNewPassword = null,
    Object? isValid = null,
    Object? formStatus = null,
  }) {
    return _then(_value.copyWith(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as NewPassword,
      confirmNewPassword: null == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as Password,
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
abstract class _$$NewPasswordStateImplCopyWith<$Res>
    implements $NewPasswordStateCopyWith<$Res> {
  factory _$$NewPasswordStateImplCopyWith(_$NewPasswordStateImpl value,
          $Res Function(_$NewPasswordStateImpl) then) =
      __$$NewPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NewPassword newPassword,
      Password confirmNewPassword,
      bool isValid,
      FormStatus formStatus});
}

/// @nodoc
class __$$NewPasswordStateImplCopyWithImpl<$Res>
    extends _$NewPasswordStateCopyWithImpl<$Res, _$NewPasswordStateImpl>
    implements _$$NewPasswordStateImplCopyWith<$Res> {
  __$$NewPasswordStateImplCopyWithImpl(_$NewPasswordStateImpl _value,
      $Res Function(_$NewPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPassword = null,
    Object? confirmNewPassword = null,
    Object? isValid = null,
    Object? formStatus = null,
  }) {
    return _then(_$NewPasswordStateImpl(
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as NewPassword,
      confirmNewPassword: null == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as Password,
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

class _$NewPasswordStateImpl implements _NewPasswordState {
  const _$NewPasswordStateImpl(
      {this.newPassword = const NewPassword.pure(),
      this.confirmNewPassword = const Password.pure(),
      this.isValid = false,
      this.formStatus = FormStatus.empty});

  @override
  @JsonKey()
  final NewPassword newPassword;
  @override
  @JsonKey()
  final Password confirmNewPassword;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final FormStatus formStatus;

  @override
  String toString() {
    return 'NewPasswordState(newPassword: $newPassword, confirmNewPassword: $confirmNewPassword, isValid: $isValid, formStatus: $formStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordStateImpl &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmNewPassword, confirmNewPassword) ||
                other.confirmNewPassword == confirmNewPassword) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, newPassword, confirmNewPassword, isValid, formStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPasswordStateImplCopyWith<_$NewPasswordStateImpl> get copyWith =>
      __$$NewPasswordStateImplCopyWithImpl<_$NewPasswordStateImpl>(
          this, _$identity);
}

abstract class _NewPasswordState implements NewPasswordState {
  const factory _NewPasswordState(
      {final NewPassword newPassword,
      final Password confirmNewPassword,
      final bool isValid,
      final FormStatus formStatus}) = _$NewPasswordStateImpl;

  @override
  NewPassword get newPassword;
  @override
  Password get confirmNewPassword;
  @override
  bool get isValid;
  @override
  FormStatus get formStatus;
  @override
  @JsonKey(ignore: true)
  _$$NewPasswordStateImplCopyWith<_$NewPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
