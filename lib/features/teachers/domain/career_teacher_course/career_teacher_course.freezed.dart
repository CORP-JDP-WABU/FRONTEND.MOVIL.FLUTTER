// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career_teacher_course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CareerTeacherCourse _$CareerTeacherCourseFromJson(Map<String, dynamic> json) {
  return _CareerTeacherCourse.fromJson(json);
}

/// @nodoc
mixin _$CareerTeacherCourse {
  CareerCourse? get course => throw _privateConstructorUsedError;
  CareerTeacher? get teacher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CareerTeacherCourseCopyWith<CareerTeacherCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerTeacherCourseCopyWith<$Res> {
  factory $CareerTeacherCourseCopyWith(
          CareerTeacherCourse value, $Res Function(CareerTeacherCourse) then) =
      _$CareerTeacherCourseCopyWithImpl<$Res, CareerTeacherCourse>;
  @useResult
  $Res call({CareerCourse? course, CareerTeacher? teacher});

  $CareerCourseCopyWith<$Res>? get course;
  $CareerTeacherCopyWith<$Res>? get teacher;
}

/// @nodoc
class _$CareerTeacherCourseCopyWithImpl<$Res, $Val extends CareerTeacherCourse>
    implements $CareerTeacherCourseCopyWith<$Res> {
  _$CareerTeacherCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
    Object? teacher = freezed,
  }) {
    return _then(_value.copyWith(
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CareerCourse?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as CareerTeacher?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CareerCourseCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $CareerCourseCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CareerTeacherCopyWith<$Res>? get teacher {
    if (_value.teacher == null) {
      return null;
    }

    return $CareerTeacherCopyWith<$Res>(_value.teacher!, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CareerTeacherCourseImplCopyWith<$Res>
    implements $CareerTeacherCourseCopyWith<$Res> {
  factory _$$CareerTeacherCourseImplCopyWith(_$CareerTeacherCourseImpl value,
          $Res Function(_$CareerTeacherCourseImpl) then) =
      __$$CareerTeacherCourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CareerCourse? course, CareerTeacher? teacher});

  @override
  $CareerCourseCopyWith<$Res>? get course;
  @override
  $CareerTeacherCopyWith<$Res>? get teacher;
}

/// @nodoc
class __$$CareerTeacherCourseImplCopyWithImpl<$Res>
    extends _$CareerTeacherCourseCopyWithImpl<$Res, _$CareerTeacherCourseImpl>
    implements _$$CareerTeacherCourseImplCopyWith<$Res> {
  __$$CareerTeacherCourseImplCopyWithImpl(_$CareerTeacherCourseImpl _value,
      $Res Function(_$CareerTeacherCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
    Object? teacher = freezed,
  }) {
    return _then(_$CareerTeacherCourseImpl(
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CareerCourse?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as CareerTeacher?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CareerTeacherCourseImpl implements _CareerTeacherCourse {
  const _$CareerTeacherCourseImpl({this.course, this.teacher});

  factory _$CareerTeacherCourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareerTeacherCourseImplFromJson(json);

  @override
  final CareerCourse? course;
  @override
  final CareerTeacher? teacher;

  @override
  String toString() {
    return 'CareerTeacherCourse(course: $course, teacher: $teacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerTeacherCourseImpl &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, course, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerTeacherCourseImplCopyWith<_$CareerTeacherCourseImpl> get copyWith =>
      __$$CareerTeacherCourseImplCopyWithImpl<_$CareerTeacherCourseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareerTeacherCourseImplToJson(
      this,
    );
  }
}

abstract class _CareerTeacherCourse implements CareerTeacherCourse {
  const factory _CareerTeacherCourse(
      {final CareerCourse? course,
      final CareerTeacher? teacher}) = _$CareerTeacherCourseImpl;

  factory _CareerTeacherCourse.fromJson(Map<String, dynamic> json) =
      _$CareerTeacherCourseImpl.fromJson;

  @override
  CareerCourse? get course;
  @override
  CareerTeacher? get teacher;
  @override
  @JsonKey(ignore: true)
  _$$CareerTeacherCourseImplCopyWith<_$CareerTeacherCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
