// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smash_suggestion_teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmashSuggestionTeacher _$SmashSuggestionTeacherFromJson(
    Map<String, dynamic> json) {
  return _SmashSuggestionTeacher.fromJson(json);
}

/// @nodoc
mixin _$SmashSuggestionTeacher {
  String? get idTeacher => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmashSuggestionTeacherCopyWith<SmashSuggestionTeacher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmashSuggestionTeacherCopyWith<$Res> {
  factory $SmashSuggestionTeacherCopyWith(SmashSuggestionTeacher value,
          $Res Function(SmashSuggestionTeacher) then) =
      _$SmashSuggestionTeacherCopyWithImpl<$Res, SmashSuggestionTeacher>;
  @useResult
  $Res call(
      {String? idTeacher,
      String? firstName,
      String? lastName,
      String? photoUrl});
}

/// @nodoc
class _$SmashSuggestionTeacherCopyWithImpl<$Res,
        $Val extends SmashSuggestionTeacher>
    implements $SmashSuggestionTeacherCopyWith<$Res> {
  _$SmashSuggestionTeacherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTeacher = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      idTeacher: freezed == idTeacher
          ? _value.idTeacher
          : idTeacher // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmashSuggestionTeacherImplCopyWith<$Res>
    implements $SmashSuggestionTeacherCopyWith<$Res> {
  factory _$$SmashSuggestionTeacherImplCopyWith(
          _$SmashSuggestionTeacherImpl value,
          $Res Function(_$SmashSuggestionTeacherImpl) then) =
      __$$SmashSuggestionTeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idTeacher,
      String? firstName,
      String? lastName,
      String? photoUrl});
}

/// @nodoc
class __$$SmashSuggestionTeacherImplCopyWithImpl<$Res>
    extends _$SmashSuggestionTeacherCopyWithImpl<$Res,
        _$SmashSuggestionTeacherImpl>
    implements _$$SmashSuggestionTeacherImplCopyWith<$Res> {
  __$$SmashSuggestionTeacherImplCopyWithImpl(
      _$SmashSuggestionTeacherImpl _value,
      $Res Function(_$SmashSuggestionTeacherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTeacher = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$SmashSuggestionTeacherImpl(
      idTeacher: freezed == idTeacher
          ? _value.idTeacher
          : idTeacher // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmashSuggestionTeacherImpl implements _SmashSuggestionTeacher {
  const _$SmashSuggestionTeacherImpl(
      {this.idTeacher, this.firstName, this.lastName, this.photoUrl});

  factory _$SmashSuggestionTeacherImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmashSuggestionTeacherImplFromJson(json);

  @override
  final String? idTeacher;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'SmashSuggestionTeacher(idTeacher: $idTeacher, firstName: $firstName, lastName: $lastName, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmashSuggestionTeacherImpl &&
            (identical(other.idTeacher, idTeacher) ||
                other.idTeacher == idTeacher) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idTeacher, firstName, lastName, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmashSuggestionTeacherImplCopyWith<_$SmashSuggestionTeacherImpl>
      get copyWith => __$$SmashSuggestionTeacherImplCopyWithImpl<
          _$SmashSuggestionTeacherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmashSuggestionTeacherImplToJson(
      this,
    );
  }
}

abstract class _SmashSuggestionTeacher implements SmashSuggestionTeacher {
  const factory _SmashSuggestionTeacher(
      {final String? idTeacher,
      final String? firstName,
      final String? lastName,
      final String? photoUrl}) = _$SmashSuggestionTeacherImpl;

  factory _SmashSuggestionTeacher.fromJson(Map<String, dynamic> json) =
      _$SmashSuggestionTeacherImpl.fromJson;

  @override
  String? get idTeacher;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$SmashSuggestionTeacherImplCopyWith<_$SmashSuggestionTeacherImpl>
      get copyWith => throw _privateConstructorUsedError;
}
