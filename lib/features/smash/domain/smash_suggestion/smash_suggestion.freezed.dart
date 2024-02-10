// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smash_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmashSuggestion _$SmashSuggestionFromJson(Map<String, dynamic> json) {
  return _SmashSuggestion.fromJson(json);
}

/// @nodoc
mixin _$SmashSuggestion {
  SmashSuggestionCourse? get course => throw _privateConstructorUsedError;
  SmashSuggestionTeacher? get teacher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmashSuggestionCopyWith<SmashSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmashSuggestionCopyWith<$Res> {
  factory $SmashSuggestionCopyWith(
          SmashSuggestion value, $Res Function(SmashSuggestion) then) =
      _$SmashSuggestionCopyWithImpl<$Res, SmashSuggestion>;
  @useResult
  $Res call({SmashSuggestionCourse? course, SmashSuggestionTeacher? teacher});

  $SmashSuggestionCourseCopyWith<$Res>? get course;
  $SmashSuggestionTeacherCopyWith<$Res>? get teacher;
}

/// @nodoc
class _$SmashSuggestionCopyWithImpl<$Res, $Val extends SmashSuggestion>
    implements $SmashSuggestionCopyWith<$Res> {
  _$SmashSuggestionCopyWithImpl(this._value, this._then);

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
              as SmashSuggestionCourse?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as SmashSuggestionTeacher?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SmashSuggestionCourseCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $SmashSuggestionCourseCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SmashSuggestionTeacherCopyWith<$Res>? get teacher {
    if (_value.teacher == null) {
      return null;
    }

    return $SmashSuggestionTeacherCopyWith<$Res>(_value.teacher!, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SmashSuggestionImplCopyWith<$Res>
    implements $SmashSuggestionCopyWith<$Res> {
  factory _$$SmashSuggestionImplCopyWith(_$SmashSuggestionImpl value,
          $Res Function(_$SmashSuggestionImpl) then) =
      __$$SmashSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SmashSuggestionCourse? course, SmashSuggestionTeacher? teacher});

  @override
  $SmashSuggestionCourseCopyWith<$Res>? get course;
  @override
  $SmashSuggestionTeacherCopyWith<$Res>? get teacher;
}

/// @nodoc
class __$$SmashSuggestionImplCopyWithImpl<$Res>
    extends _$SmashSuggestionCopyWithImpl<$Res, _$SmashSuggestionImpl>
    implements _$$SmashSuggestionImplCopyWith<$Res> {
  __$$SmashSuggestionImplCopyWithImpl(
      _$SmashSuggestionImpl _value, $Res Function(_$SmashSuggestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
    Object? teacher = freezed,
  }) {
    return _then(_$SmashSuggestionImpl(
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as SmashSuggestionCourse?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as SmashSuggestionTeacher?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmashSuggestionImpl implements _SmashSuggestion {
  const _$SmashSuggestionImpl({this.course, this.teacher});

  factory _$SmashSuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmashSuggestionImplFromJson(json);

  @override
  final SmashSuggestionCourse? course;
  @override
  final SmashSuggestionTeacher? teacher;

  @override
  String toString() {
    return 'SmashSuggestion(course: $course, teacher: $teacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmashSuggestionImpl &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, course, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmashSuggestionImplCopyWith<_$SmashSuggestionImpl> get copyWith =>
      __$$SmashSuggestionImplCopyWithImpl<_$SmashSuggestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmashSuggestionImplToJson(
      this,
    );
  }
}

abstract class _SmashSuggestion implements SmashSuggestion {
  const factory _SmashSuggestion(
      {final SmashSuggestionCourse? course,
      final SmashSuggestionTeacher? teacher}) = _$SmashSuggestionImpl;

  factory _SmashSuggestion.fromJson(Map<String, dynamic> json) =
      _$SmashSuggestionImpl.fromJson;

  @override
  SmashSuggestionCourse? get course;
  @override
  SmashSuggestionTeacher? get teacher;
  @override
  @JsonKey(ignore: true)
  _$$SmashSuggestionImplCopyWith<_$SmashSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
