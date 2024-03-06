// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_course_student_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherCourseStudentComment _$TeacherCourseStudentCommentFromJson(
    Map<String, dynamic> json) {
  return _TeacherCourseStudentComment.fromJson(json);
}

/// @nodoc
mixin _$TeacherCourseStudentComment {
  List<String>? get likes => throw _privateConstructorUsedError;
  List<String>? get dislikes => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get createdAtString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherCourseStudentCommentCopyWith<TeacherCourseStudentComment>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseStudentCommentCopyWith<$Res> {
  factory $TeacherCourseStudentCommentCopyWith(
          TeacherCourseStudentComment value,
          $Res Function(TeacherCourseStudentComment) then) =
      _$TeacherCourseStudentCommentCopyWithImpl<$Res,
          TeacherCourseStudentComment>;
  @useResult
  $Res call(
      {List<String>? likes,
      List<String>? dislikes,
      String? photoUrl,
      String? fullName,
      String? comment,
      String? createdAtString});
}

/// @nodoc
class _$TeacherCourseStudentCommentCopyWithImpl<$Res,
        $Val extends TeacherCourseStudentComment>
    implements $TeacherCourseStudentCommentCopyWith<$Res> {
  _$TeacherCourseStudentCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? dislikes = freezed,
    Object? photoUrl = freezed,
    Object? fullName = freezed,
    Object? comment = freezed,
    Object? createdAtString = freezed,
  }) {
    return _then(_value.copyWith(
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dislikes: freezed == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAtString: freezed == createdAtString
          ? _value.createdAtString
          : createdAtString // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherCourseStudentCommentImplCopyWith<$Res>
    implements $TeacherCourseStudentCommentCopyWith<$Res> {
  factory _$$TeacherCourseStudentCommentImplCopyWith(
          _$TeacherCourseStudentCommentImpl value,
          $Res Function(_$TeacherCourseStudentCommentImpl) then) =
      __$$TeacherCourseStudentCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? likes,
      List<String>? dislikes,
      String? photoUrl,
      String? fullName,
      String? comment,
      String? createdAtString});
}

/// @nodoc
class __$$TeacherCourseStudentCommentImplCopyWithImpl<$Res>
    extends _$TeacherCourseStudentCommentCopyWithImpl<$Res,
        _$TeacherCourseStudentCommentImpl>
    implements _$$TeacherCourseStudentCommentImplCopyWith<$Res> {
  __$$TeacherCourseStudentCommentImplCopyWithImpl(
      _$TeacherCourseStudentCommentImpl _value,
      $Res Function(_$TeacherCourseStudentCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? dislikes = freezed,
    Object? photoUrl = freezed,
    Object? fullName = freezed,
    Object? comment = freezed,
    Object? createdAtString = freezed,
  }) {
    return _then(_$TeacherCourseStudentCommentImpl(
      freezed == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == dislikes
          ? _value._dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == createdAtString
          ? _value.createdAtString
          : createdAtString // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherCourseStudentCommentImpl
    implements _TeacherCourseStudentComment {
  const _$TeacherCourseStudentCommentImpl(
      final List<String>? likes,
      final List<String>? dislikes,
      this.photoUrl,
      this.fullName,
      this.comment,
      this.createdAtString)
      : _likes = likes,
        _dislikes = dislikes;

  factory _$TeacherCourseStudentCommentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TeacherCourseStudentCommentImplFromJson(json);

  final List<String>? _likes;
  @override
  List<String>? get likes {
    final value = _likes;
    if (value == null) return null;
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _dislikes;
  @override
  List<String>? get dislikes {
    final value = _dislikes;
    if (value == null) return null;
    if (_dislikes is EqualUnmodifiableListView) return _dislikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? photoUrl;
  @override
  final String? fullName;
  @override
  final String? comment;
  @override
  final String? createdAtString;

  @override
  String toString() {
    return 'TeacherCourseStudentComment(likes: $likes, dislikes: $dislikes, photoUrl: $photoUrl, fullName: $fullName, comment: $comment, createdAtString: $createdAtString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherCourseStudentCommentImpl &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._dislikes, _dislikes) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAtString, createdAtString) ||
                other.createdAtString == createdAtString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_dislikes),
      photoUrl,
      fullName,
      comment,
      createdAtString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherCourseStudentCommentImplCopyWith<_$TeacherCourseStudentCommentImpl>
      get copyWith => __$$TeacherCourseStudentCommentImplCopyWithImpl<
          _$TeacherCourseStudentCommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherCourseStudentCommentImplToJson(
      this,
    );
  }
}

abstract class _TeacherCourseStudentComment
    implements TeacherCourseStudentComment {
  const factory _TeacherCourseStudentComment(
      final List<String>? likes,
      final List<String>? dislikes,
      final String? photoUrl,
      final String? fullName,
      final String? comment,
      final String? createdAtString) = _$TeacherCourseStudentCommentImpl;

  factory _TeacherCourseStudentComment.fromJson(Map<String, dynamic> json) =
      _$TeacherCourseStudentCommentImpl.fromJson;

  @override
  List<String>? get likes;
  @override
  List<String>? get dislikes;
  @override
  String? get photoUrl;
  @override
  String? get fullName;
  @override
  String? get comment;
  @override
  String? get createdAtString;
  @override
  @JsonKey(ignore: true)
  _$$TeacherCourseStudentCommentImplCopyWith<_$TeacherCourseStudentCommentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
