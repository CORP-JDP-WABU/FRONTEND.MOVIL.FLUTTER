// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Teacher _$TeacherFromJson(Map<String, dynamic> json) {
  return _Teacher.fromJson(json);
}

/// @nodoc
mixin _$Teacher {
  String? get idTeacher => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get profileUrl => throw _privateConstructorUsedError;
  String? get information => throw _privateConstructorUsedError;
  TeacherCourse? get course => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherCopyWith<Teacher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCopyWith<$Res> {
  factory $TeacherCopyWith(Teacher value, $Res Function(Teacher) then) =
      _$TeacherCopyWithImpl<$Res, Teacher>;
  @useResult
  $Res call(
      {String? idTeacher,
      String? firstName,
      String? lastName,
      String? email,
      String? profileUrl,
      String? information,
      TeacherCourse? course});

  $TeacherCourseCopyWith<$Res>? get course;
}

/// @nodoc
class _$TeacherCopyWithImpl<$Res, $Val extends Teacher>
    implements $TeacherCopyWith<$Res> {
  _$TeacherCopyWithImpl(this._value, this._then);

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
    Object? email = freezed,
    Object? profileUrl = freezed,
    Object? information = freezed,
    Object? course = freezed,
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as TeacherCourse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherCourseCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $TeacherCourseCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherImplCopyWith<$Res> implements $TeacherCopyWith<$Res> {
  factory _$$TeacherImplCopyWith(
          _$TeacherImpl value, $Res Function(_$TeacherImpl) then) =
      __$$TeacherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idTeacher,
      String? firstName,
      String? lastName,
      String? email,
      String? profileUrl,
      String? information,
      TeacherCourse? course});

  @override
  $TeacherCourseCopyWith<$Res>? get course;
}

/// @nodoc
class __$$TeacherImplCopyWithImpl<$Res>
    extends _$TeacherCopyWithImpl<$Res, _$TeacherImpl>
    implements _$$TeacherImplCopyWith<$Res> {
  __$$TeacherImplCopyWithImpl(
      _$TeacherImpl _value, $Res Function(_$TeacherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idTeacher = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? profileUrl = freezed,
    Object? information = freezed,
    Object? course = freezed,
  }) {
    return _then(_$TeacherImpl(
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
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUrl: freezed == profileUrl
          ? _value.profileUrl
          : profileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      information: freezed == information
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as String?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as TeacherCourse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherImpl implements _Teacher {
  const _$TeacherImpl(
      {this.idTeacher,
      this.firstName,
      this.lastName,
      this.email,
      this.profileUrl,
      this.information,
      this.course});

  factory _$TeacherImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherImplFromJson(json);

  @override
  final String? idTeacher;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? profileUrl;
  @override
  final String? information;
  @override
  final TeacherCourse? course;

  @override
  String toString() {
    return 'Teacher(idTeacher: $idTeacher, firstName: $firstName, lastName: $lastName, email: $email, profileUrl: $profileUrl, information: $information, course: $course)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherImpl &&
            (identical(other.idTeacher, idTeacher) ||
                other.idTeacher == idTeacher) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profileUrl, profileUrl) ||
                other.profileUrl == profileUrl) &&
            (identical(other.information, information) ||
                other.information == information) &&
            (identical(other.course, course) || other.course == course));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idTeacher, firstName, lastName,
      email, profileUrl, information, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      __$$TeacherImplCopyWithImpl<_$TeacherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherImplToJson(
      this,
    );
  }
}

abstract class _Teacher implements Teacher {
  const factory _Teacher(
      {final String? idTeacher,
      final String? firstName,
      final String? lastName,
      final String? email,
      final String? profileUrl,
      final String? information,
      final TeacherCourse? course}) = _$TeacherImpl;

  factory _Teacher.fromJson(Map<String, dynamic> json) = _$TeacherImpl.fromJson;

  @override
  String? get idTeacher;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get email;
  @override
  String? get profileUrl;
  @override
  String? get information;
  @override
  TeacherCourse? get course;
  @override
  @JsonKey(ignore: true)
  _$$TeacherImplCopyWith<_$TeacherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
