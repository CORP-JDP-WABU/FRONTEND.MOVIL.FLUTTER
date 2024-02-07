// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career_teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CareerTeacher _$CareerTeacherFromJson(Map<String, dynamic> json) {
  return _CareerTeacher.fromJson(json);
}

/// @nodoc
mixin _$CareerTeacher {
  String? get idTeacher => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CareerTeacherCopyWith<CareerTeacher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerTeacherCopyWith<$Res> {
  factory $CareerTeacherCopyWith(
          CareerTeacher value, $Res Function(CareerTeacher) then) =
      _$CareerTeacherCopyWithImpl<$Res, CareerTeacher>;
  @useResult
  $Res call(
      {String? idTeacher,
      String? firstName,
      String? lastName,
      String? photoUrl});
}

/// @nodoc
class _$CareerTeacherCopyWithImpl<$Res, $Val extends CareerTeacher>
    implements $CareerTeacherCopyWith<$Res> {
  _$CareerTeacherCopyWithImpl(this._value, this._then);

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
abstract class _$$CareerTeacherImplCopyWith<$Res>
    implements $CareerTeacherCopyWith<$Res> {
  factory _$$CareerTeacherImplCopyWith(
          _$CareerTeacherImpl value, $Res Function(_$CareerTeacherImpl) then) =
      __$$CareerTeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idTeacher,
      String? firstName,
      String? lastName,
      String? photoUrl});
}

/// @nodoc
class __$$CareerTeacherImplCopyWithImpl<$Res>
    extends _$CareerTeacherCopyWithImpl<$Res, _$CareerTeacherImpl>
    implements _$$CareerTeacherImplCopyWith<$Res> {
  __$$CareerTeacherImplCopyWithImpl(
      _$CareerTeacherImpl _value, $Res Function(_$CareerTeacherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTeacher = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$CareerTeacherImpl(
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
class _$CareerTeacherImpl implements _CareerTeacher {
  const _$CareerTeacherImpl(
      {this.idTeacher, this.firstName, this.lastName, this.photoUrl});

  factory _$CareerTeacherImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareerTeacherImplFromJson(json);

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
    return 'CareerTeacher(idTeacher: $idTeacher, firstName: $firstName, lastName: $lastName, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerTeacherImpl &&
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
  _$$CareerTeacherImplCopyWith<_$CareerTeacherImpl> get copyWith =>
      __$$CareerTeacherImplCopyWithImpl<_$CareerTeacherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareerTeacherImplToJson(
      this,
    );
  }
}

abstract class _CareerTeacher implements CareerTeacher {
  const factory _CareerTeacher(
      {final String? idTeacher,
      final String? firstName,
      final String? lastName,
      final String? photoUrl}) = _$CareerTeacherImpl;

  factory _CareerTeacher.fromJson(Map<String, dynamic> json) =
      _$CareerTeacherImpl.fromJson;

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
  _$$CareerTeacherImplCopyWith<_$CareerTeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
