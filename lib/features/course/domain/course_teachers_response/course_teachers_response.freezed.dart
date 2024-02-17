// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_teachers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseTeachersResponse _$CourseTeachersResponseFromJson(
    Map<String, dynamic> json) {
  return _CourseTeacherResponse.fromJson(json);
}

/// @nodoc
mixin _$CourseTeachersResponse {
  Course? get course => throw _privateConstructorUsedError;
  List<CourseTeacher>? get teachers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseTeachersResponseCopyWith<CourseTeachersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseTeachersResponseCopyWith<$Res> {
  factory $CourseTeachersResponseCopyWith(CourseTeachersResponse value,
          $Res Function(CourseTeachersResponse) then) =
      _$CourseTeachersResponseCopyWithImpl<$Res, CourseTeachersResponse>;
  @useResult
  $Res call({Course? course, List<CourseTeacher>? teachers});

  $CourseCopyWith<$Res>? get course;
}

/// @nodoc
class _$CourseTeachersResponseCopyWithImpl<$Res,
        $Val extends CourseTeachersResponse>
    implements $CourseTeachersResponseCopyWith<$Res> {
  _$CourseTeachersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
    Object? teachers = freezed,
  }) {
    return _then(_value.copyWith(
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course?,
      teachers: freezed == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<CourseTeacher>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $CourseCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseTeacherResponseImplCopyWith<$Res>
    implements $CourseTeachersResponseCopyWith<$Res> {
  factory _$$CourseTeacherResponseImplCopyWith(
          _$CourseTeacherResponseImpl value,
          $Res Function(_$CourseTeacherResponseImpl) then) =
      __$$CourseTeacherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Course? course, List<CourseTeacher>? teachers});

  @override
  $CourseCopyWith<$Res>? get course;
}

/// @nodoc
class __$$CourseTeacherResponseImplCopyWithImpl<$Res>
    extends _$CourseTeachersResponseCopyWithImpl<$Res,
        _$CourseTeacherResponseImpl>
    implements _$$CourseTeacherResponseImplCopyWith<$Res> {
  __$$CourseTeacherResponseImplCopyWithImpl(_$CourseTeacherResponseImpl _value,
      $Res Function(_$CourseTeacherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
    Object? teachers = freezed,
  }) {
    return _then(_$CourseTeacherResponseImpl(
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course?,
      teachers: freezed == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<CourseTeacher>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseTeacherResponseImpl implements _CourseTeacherResponse {
  const _$CourseTeacherResponseImpl(
      {this.course, final List<CourseTeacher>? teachers})
      : _teachers = teachers;

  factory _$CourseTeacherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseTeacherResponseImplFromJson(json);

  @override
  final Course? course;
  final List<CourseTeacher>? _teachers;
  @override
  List<CourseTeacher>? get teachers {
    final value = _teachers;
    if (value == null) return null;
    if (_teachers is EqualUnmodifiableListView) return _teachers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CourseTeachersResponse(course: $course, teachers: $teachers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseTeacherResponseImpl &&
            (identical(other.course, course) || other.course == course) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, course, const DeepCollectionEquality().hash(_teachers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseTeacherResponseImplCopyWith<_$CourseTeacherResponseImpl>
      get copyWith => __$$CourseTeacherResponseImplCopyWithImpl<
          _$CourseTeacherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseTeacherResponseImplToJson(
      this,
    );
  }
}

abstract class _CourseTeacherResponse implements CourseTeachersResponse {
  const factory _CourseTeacherResponse(
      {final Course? course,
      final List<CourseTeacher>? teachers}) = _$CourseTeacherResponseImpl;

  factory _CourseTeacherResponse.fromJson(Map<String, dynamic> json) =
      _$CourseTeacherResponseImpl.fromJson;

  @override
  Course? get course;
  @override
  List<CourseTeacher>? get teachers;
  @override
  @JsonKey(ignore: true)
  _$$CourseTeacherResponseImplCopyWith<_$CourseTeacherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
