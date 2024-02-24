// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_teachers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseTeachersState {
  CourseTeachersResponse get courseTeachersResponse =>
      throw _privateConstructorUsedError;
  CourseTeachersStatus get courseTeachersStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseTeachersStateCopyWith<CourseTeachersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTeachersStateCopyWith<$Res> {
  factory $CourseTeachersStateCopyWith(
          CourseTeachersState value, $Res Function(CourseTeachersState) then) =
      _$CourseTeachersStateCopyWithImpl<$Res, CourseTeachersState>;
  @useResult
  $Res call(
      {CourseTeachersResponse courseTeachersResponse,
      CourseTeachersStatus courseTeachersStatus});

  $CourseTeachersResponseCopyWith<$Res> get courseTeachersResponse;
}

/// @nodoc
class _$CourseTeachersStateCopyWithImpl<$Res, $Val extends CourseTeachersState>
    implements $CourseTeachersStateCopyWith<$Res> {
  _$CourseTeachersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTeachersResponse = null,
    Object? courseTeachersStatus = null,
  }) {
    return _then(_value.copyWith(
      courseTeachersResponse: null == courseTeachersResponse
          ? _value.courseTeachersResponse
          : courseTeachersResponse // ignore: cast_nullable_to_non_nullable
              as CourseTeachersResponse,
      courseTeachersStatus: null == courseTeachersStatus
          ? _value.courseTeachersStatus
          : courseTeachersStatus // ignore: cast_nullable_to_non_nullable
              as CourseTeachersStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseTeachersResponseCopyWith<$Res> get courseTeachersResponse {
    return $CourseTeachersResponseCopyWith<$Res>(_value.courseTeachersResponse,
        (value) {
      return _then(_value.copyWith(courseTeachersResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseTeachersStateImplCopyWith<$Res>
    implements $CourseTeachersStateCopyWith<$Res> {
  factory _$$CourseTeachersStateImplCopyWith(_$CourseTeachersStateImpl value,
          $Res Function(_$CourseTeachersStateImpl) then) =
      __$$CourseTeachersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CourseTeachersResponse courseTeachersResponse,
      CourseTeachersStatus courseTeachersStatus});

  @override
  $CourseTeachersResponseCopyWith<$Res> get courseTeachersResponse;
}

/// @nodoc
class __$$CourseTeachersStateImplCopyWithImpl<$Res>
    extends _$CourseTeachersStateCopyWithImpl<$Res, _$CourseTeachersStateImpl>
    implements _$$CourseTeachersStateImplCopyWith<$Res> {
  __$$CourseTeachersStateImplCopyWithImpl(_$CourseTeachersStateImpl _value,
      $Res Function(_$CourseTeachersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseTeachersResponse = null,
    Object? courseTeachersStatus = null,
  }) {
    return _then(_$CourseTeachersStateImpl(
      courseTeachersResponse: null == courseTeachersResponse
          ? _value.courseTeachersResponse
          : courseTeachersResponse // ignore: cast_nullable_to_non_nullable
              as CourseTeachersResponse,
      courseTeachersStatus: null == courseTeachersStatus
          ? _value.courseTeachersStatus
          : courseTeachersStatus // ignore: cast_nullable_to_non_nullable
              as CourseTeachersStatus,
    ));
  }
}

/// @nodoc

class _$CourseTeachersStateImpl implements _CourseTeachersState {
  const _$CourseTeachersStateImpl(
      {this.courseTeachersResponse = const CourseTeachersResponse(),
      this.courseTeachersStatus = CourseTeachersStatus.loading});

  @override
  @JsonKey()
  final CourseTeachersResponse courseTeachersResponse;
  @override
  @JsonKey()
  final CourseTeachersStatus courseTeachersStatus;

  @override
  String toString() {
    return 'CourseTeachersState(courseTeachersResponse: $courseTeachersResponse, courseTeachersStatus: $courseTeachersStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTeachersStateImpl &&
            (identical(other.courseTeachersResponse, courseTeachersResponse) ||
                other.courseTeachersResponse == courseTeachersResponse) &&
            (identical(other.courseTeachersStatus, courseTeachersStatus) ||
                other.courseTeachersStatus == courseTeachersStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, courseTeachersResponse, courseTeachersStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTeachersStateImplCopyWith<_$CourseTeachersStateImpl> get copyWith =>
      __$$CourseTeachersStateImplCopyWithImpl<_$CourseTeachersStateImpl>(
          this, _$identity);
}

abstract class _CourseTeachersState implements CourseTeachersState {
  const factory _CourseTeachersState(
          {final CourseTeachersResponse courseTeachersResponse,
          final CourseTeachersStatus courseTeachersStatus}) =
      _$CourseTeachersStateImpl;

  @override
  CourseTeachersResponse get courseTeachersResponse;
  @override
  CourseTeachersStatus get courseTeachersStatus;
  @override
  @JsonKey(ignore: true)
  _$$CourseTeachersStateImplCopyWith<_$CourseTeachersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
