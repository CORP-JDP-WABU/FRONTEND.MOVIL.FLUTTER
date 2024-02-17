// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_course_extra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherCourseExtra {
  String get teacherId => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherCourseExtraCopyWith<TeacherCourseExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseExtraCopyWith<$Res> {
  factory $TeacherCourseExtraCopyWith(
          TeacherCourseExtra value, $Res Function(TeacherCourseExtra) then) =
      _$TeacherCourseExtraCopyWithImpl<$Res, TeacherCourseExtra>;
  @useResult
  $Res call({String teacherId, String courseId});
}

/// @nodoc
class _$TeacherCourseExtraCopyWithImpl<$Res, $Val extends TeacherCourseExtra>
    implements $TeacherCourseExtraCopyWith<$Res> {
  _$TeacherCourseExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
    Object? courseId = null,
  }) {
    return _then(_value.copyWith(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherCourseExtraImplCopyWith<$Res>
    implements $TeacherCourseExtraCopyWith<$Res> {
  factory _$$TeacherCourseExtraImplCopyWith(_$TeacherCourseExtraImpl value,
          $Res Function(_$TeacherCourseExtraImpl) then) =
      __$$TeacherCourseExtraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String teacherId, String courseId});
}

/// @nodoc
class __$$TeacherCourseExtraImplCopyWithImpl<$Res>
    extends _$TeacherCourseExtraCopyWithImpl<$Res, _$TeacherCourseExtraImpl>
    implements _$$TeacherCourseExtraImplCopyWith<$Res> {
  __$$TeacherCourseExtraImplCopyWithImpl(_$TeacherCourseExtraImpl _value,
      $Res Function(_$TeacherCourseExtraImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
    Object? courseId = null,
  }) {
    return _then(_$TeacherCourseExtraImpl(
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as String,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TeacherCourseExtraImpl implements _TeacherCourseExtra {
  const _$TeacherCourseExtraImpl(
      {required this.teacherId, required this.courseId});

  @override
  final String teacherId;
  @override
  final String courseId;

  @override
  String toString() {
    return 'TeacherCourseExtra(teacherId: $teacherId, courseId: $courseId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherCourseExtraImpl &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacherId, courseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherCourseExtraImplCopyWith<_$TeacherCourseExtraImpl> get copyWith =>
      __$$TeacherCourseExtraImplCopyWithImpl<_$TeacherCourseExtraImpl>(
          this, _$identity);
}

abstract class _TeacherCourseExtra implements TeacherCourseExtra {
  const factory _TeacherCourseExtra(
      {required final String teacherId,
      required final String courseId}) = _$TeacherCourseExtraImpl;

  @override
  String get teacherId;
  @override
  String get courseId;
  @override
  @JsonKey(ignore: true)
  _$$TeacherCourseExtraImplCopyWith<_$TeacherCourseExtraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
