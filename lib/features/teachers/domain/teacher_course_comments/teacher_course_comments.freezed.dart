// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_course_comments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherCourseComments _$TeacherCourseCommentsFromJson(
    Map<String, dynamic> json) {
  return _TeacherCourseComments.fromJson(json);
}

/// @nodoc
mixin _$TeacherCourseComments {
  String? get idUniversity => throw _privateConstructorUsedError;
  String? get idTeacher => throw _privateConstructorUsedError;
  String? get idCourse => throw _privateConstructorUsedError;
  List<TeacherCourseStudentComment>? get students =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherCourseCommentsCopyWith<TeacherCourseComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseCommentsCopyWith<$Res> {
  factory $TeacherCourseCommentsCopyWith(TeacherCourseComments value,
          $Res Function(TeacherCourseComments) then) =
      _$TeacherCourseCommentsCopyWithImpl<$Res, TeacherCourseComments>;
  @useResult
  $Res call(
      {String? idUniversity,
      String? idTeacher,
      String? idCourse,
      List<TeacherCourseStudentComment>? students});
}

/// @nodoc
class _$TeacherCourseCommentsCopyWithImpl<$Res,
        $Val extends TeacherCourseComments>
    implements $TeacherCourseCommentsCopyWith<$Res> {
  _$TeacherCourseCommentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUniversity = freezed,
    Object? idTeacher = freezed,
    Object? idCourse = freezed,
    Object? students = freezed,
  }) {
    return _then(_value.copyWith(
      idUniversity: freezed == idUniversity
          ? _value.idUniversity
          : idUniversity // ignore: cast_nullable_to_non_nullable
              as String?,
      idTeacher: freezed == idTeacher
          ? _value.idTeacher
          : idTeacher // ignore: cast_nullable_to_non_nullable
              as String?,
      idCourse: freezed == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as String?,
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<TeacherCourseStudentComment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherCourseCommentsImplCopyWith<$Res>
    implements $TeacherCourseCommentsCopyWith<$Res> {
  factory _$$TeacherCourseCommentsImplCopyWith(
          _$TeacherCourseCommentsImpl value,
          $Res Function(_$TeacherCourseCommentsImpl) then) =
      __$$TeacherCourseCommentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idUniversity,
      String? idTeacher,
      String? idCourse,
      List<TeacherCourseStudentComment>? students});
}

/// @nodoc
class __$$TeacherCourseCommentsImplCopyWithImpl<$Res>
    extends _$TeacherCourseCommentsCopyWithImpl<$Res,
        _$TeacherCourseCommentsImpl>
    implements _$$TeacherCourseCommentsImplCopyWith<$Res> {
  __$$TeacherCourseCommentsImplCopyWithImpl(_$TeacherCourseCommentsImpl _value,
      $Res Function(_$TeacherCourseCommentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUniversity = freezed,
    Object? idTeacher = freezed,
    Object? idCourse = freezed,
    Object? students = freezed,
  }) {
    return _then(_$TeacherCourseCommentsImpl(
      idUniversity: freezed == idUniversity
          ? _value.idUniversity
          : idUniversity // ignore: cast_nullable_to_non_nullable
              as String?,
      idTeacher: freezed == idTeacher
          ? _value.idTeacher
          : idTeacher // ignore: cast_nullable_to_non_nullable
              as String?,
      idCourse: freezed == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as String?,
      students: freezed == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<TeacherCourseStudentComment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherCourseCommentsImpl implements _TeacherCourseComments {
  const _$TeacherCourseCommentsImpl(
      {this.idUniversity,
      this.idTeacher,
      this.idCourse,
      final List<TeacherCourseStudentComment>? students})
      : _students = students;

  factory _$TeacherCourseCommentsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherCourseCommentsImplFromJson(json);

  @override
  final String? idUniversity;
  @override
  final String? idTeacher;
  @override
  final String? idCourse;
  final List<TeacherCourseStudentComment>? _students;
  @override
  List<TeacherCourseStudentComment>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TeacherCourseComments(idUniversity: $idUniversity, idTeacher: $idTeacher, idCourse: $idCourse, students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherCourseCommentsImpl &&
            (identical(other.idUniversity, idUniversity) ||
                other.idUniversity == idUniversity) &&
            (identical(other.idTeacher, idTeacher) ||
                other.idTeacher == idTeacher) &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idUniversity, idTeacher,
      idCourse, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherCourseCommentsImplCopyWith<_$TeacherCourseCommentsImpl>
      get copyWith => __$$TeacherCourseCommentsImplCopyWithImpl<
          _$TeacherCourseCommentsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherCourseCommentsImplToJson(
      this,
    );
  }
}

abstract class _TeacherCourseComments implements TeacherCourseComments {
  const factory _TeacherCourseComments(
          {final String? idUniversity,
          final String? idTeacher,
          final String? idCourse,
          final List<TeacherCourseStudentComment>? students}) =
      _$TeacherCourseCommentsImpl;

  factory _TeacherCourseComments.fromJson(Map<String, dynamic> json) =
      _$TeacherCourseCommentsImpl.fromJson;

  @override
  String? get idUniversity;
  @override
  String? get idTeacher;
  @override
  String? get idCourse;
  @override
  List<TeacherCourseStudentComment>? get students;
  @override
  @JsonKey(ignore: true)
  _$$TeacherCourseCommentsImplCopyWith<_$TeacherCourseCommentsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
