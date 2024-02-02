// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  String get token => throw _privateConstructorUsedError;
  bool get isFirstLogin => throw _privateConstructorUsedError;
  String get idStudent => throw _privateConstructorUsedError;
  String get idUniversity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call(
      {String token, bool isFirstLogin, String idStudent, String idUniversity});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? isFirstLogin = null,
    Object? idStudent = null,
    Object? idUniversity = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstLogin: null == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      idStudent: null == idStudent
          ? _value.idStudent
          : idStudent // ignore: cast_nullable_to_non_nullable
              as String,
      idUniversity: null == idUniversity
          ? _value.idUniversity
          : idUniversity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenImplCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$TokenImplCopyWith(
          _$TokenImpl value, $Res Function(_$TokenImpl) then) =
      __$$TokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token, bool isFirstLogin, String idStudent, String idUniversity});
}

/// @nodoc
class __$$TokenImplCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res, _$TokenImpl>
    implements _$$TokenImplCopyWith<$Res> {
  __$$TokenImplCopyWithImpl(
      _$TokenImpl _value, $Res Function(_$TokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? isFirstLogin = null,
    Object? idStudent = null,
    Object? idUniversity = null,
  }) {
    return _then(_$TokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isFirstLogin: null == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      idStudent: null == idStudent
          ? _value.idStudent
          : idStudent // ignore: cast_nullable_to_non_nullable
              as String,
      idUniversity: null == idUniversity
          ? _value.idUniversity
          : idUniversity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenImpl implements _Token {
  const _$TokenImpl(
      {required this.token,
      this.isFirstLogin = false,
      required this.idStudent,
      required this.idUniversity});

  factory _$TokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey()
  final bool isFirstLogin;
  @override
  final String idStudent;
  @override
  final String idUniversity;

  @override
  String toString() {
    return 'Token(token: $token, isFirstLogin: $isFirstLogin, idStudent: $idStudent, idUniversity: $idUniversity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isFirstLogin, isFirstLogin) ||
                other.isFirstLogin == isFirstLogin) &&
            (identical(other.idStudent, idStudent) ||
                other.idStudent == idStudent) &&
            (identical(other.idUniversity, idUniversity) ||
                other.idUniversity == idUniversity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, isFirstLogin, idStudent, idUniversity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      __$$TokenImplCopyWithImpl<_$TokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenImplToJson(
      this,
    );
  }
}

abstract class _Token implements Token {
  const factory _Token(
      {required final String token,
      final bool isFirstLogin,
      required final String idStudent,
      required final String idUniversity}) = _$TokenImpl;

  factory _Token.fromJson(Map<String, dynamic> json) = _$TokenImpl.fromJson;

  @override
  String get token;
  @override
  bool get isFirstLogin;
  @override
  String get idStudent;
  @override
  String get idUniversity;
  @override
  @JsonKey(ignore: true)
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
