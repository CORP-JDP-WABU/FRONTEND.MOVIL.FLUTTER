// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_course_comments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherCourseCommentsState {
  TeacherCourseComments? get teacherCourseComments =>
      throw _privateConstructorUsedError;
  dynamic get pageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherCourseCommentsStateCopyWith<TeacherCourseCommentsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseCommentsStateCopyWith<$Res> {
  factory $TeacherCourseCommentsStateCopyWith(TeacherCourseCommentsState value,
          $Res Function(TeacherCourseCommentsState) then) =
      _$TeacherCourseCommentsStateCopyWithImpl<$Res,
          TeacherCourseCommentsState>;
  @useResult
  $Res call({TeacherCourseComments? teacherCourseComments, dynamic pageStatus});

  $TeacherCourseCommentsCopyWith<$Res>? get teacherCourseComments;
}

/// @nodoc
class _$TeacherCourseCommentsStateCopyWithImpl<$Res,
        $Val extends TeacherCourseCommentsState>
    implements $TeacherCourseCommentsStateCopyWith<$Res> {
  _$TeacherCourseCommentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherCourseComments = freezed,
    Object? pageStatus = freezed,
  }) {
    return _then(_value.copyWith(
      teacherCourseComments: freezed == teacherCourseComments
          ? _value.teacherCourseComments
          : teacherCourseComments // ignore: cast_nullable_to_non_nullable
              as TeacherCourseComments?,
      pageStatus: freezed == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherCourseCommentsCopyWith<$Res>? get teacherCourseComments {
    if (_value.teacherCourseComments == null) {
      return null;
    }

    return $TeacherCourseCommentsCopyWith<$Res>(_value.teacherCourseComments!,
        (value) {
      return _then(_value.copyWith(teacherCourseComments: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherCourseCommentsStateImplCopyWith<$Res>
    implements $TeacherCourseCommentsStateCopyWith<$Res> {
  factory _$$TeacherCourseCommentsStateImplCopyWith(
          _$TeacherCourseCommentsStateImpl value,
          $Res Function(_$TeacherCourseCommentsStateImpl) then) =
      __$$TeacherCourseCommentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TeacherCourseComments? teacherCourseComments, dynamic pageStatus});

  @override
  $TeacherCourseCommentsCopyWith<$Res>? get teacherCourseComments;
}

/// @nodoc
class __$$TeacherCourseCommentsStateImplCopyWithImpl<$Res>
    extends _$TeacherCourseCommentsStateCopyWithImpl<$Res,
        _$TeacherCourseCommentsStateImpl>
    implements _$$TeacherCourseCommentsStateImplCopyWith<$Res> {
  __$$TeacherCourseCommentsStateImplCopyWithImpl(
      _$TeacherCourseCommentsStateImpl _value,
      $Res Function(_$TeacherCourseCommentsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherCourseComments = freezed,
    Object? pageStatus = freezed,
  }) {
    return _then(_$TeacherCourseCommentsStateImpl(
      teacherCourseComments: freezed == teacherCourseComments
          ? _value.teacherCourseComments
          : teacherCourseComments // ignore: cast_nullable_to_non_nullable
              as TeacherCourseComments?,
      pageStatus: freezed == pageStatus ? _value.pageStatus! : pageStatus,
    ));
  }
}

/// @nodoc

class _$TeacherCourseCommentsStateImpl implements _TeacherCourseCommentsState {
  const _$TeacherCourseCommentsStateImpl(
      {this.teacherCourseComments,
      this.pageStatus = TeacherCourseCommentsStatus.loading});

  @override
  final TeacherCourseComments? teacherCourseComments;
  @override
  @JsonKey()
  final dynamic pageStatus;

  @override
  String toString() {
    return 'TeacherCourseCommentsState(teacherCourseComments: $teacherCourseComments, pageStatus: $pageStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherCourseCommentsStateImpl &&
            (identical(other.teacherCourseComments, teacherCourseComments) ||
                other.teacherCourseComments == teacherCourseComments) &&
            const DeepCollectionEquality()
                .equals(other.pageStatus, pageStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacherCourseComments,
      const DeepCollectionEquality().hash(pageStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherCourseCommentsStateImplCopyWith<_$TeacherCourseCommentsStateImpl>
      get copyWith => __$$TeacherCourseCommentsStateImplCopyWithImpl<
          _$TeacherCourseCommentsStateImpl>(this, _$identity);
}

abstract class _TeacherCourseCommentsState
    implements TeacherCourseCommentsState {
  const factory _TeacherCourseCommentsState(
      {final TeacherCourseComments? teacherCourseComments,
      final dynamic pageStatus}) = _$TeacherCourseCommentsStateImpl;

  @override
  TeacherCourseComments? get teacherCourseComments;
  @override
  dynamic get pageStatus;
  @override
  @JsonKey(ignore: true)
  _$$TeacherCourseCommentsStateImplCopyWith<_$TeacherCourseCommentsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
