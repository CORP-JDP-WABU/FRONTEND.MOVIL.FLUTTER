// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  List<CoursesSearchResult>? get course => throw _privateConstructorUsedError;
  int? get totalCourse => throw _privateConstructorUsedError;
  List<TeachersSearchResult>? get teacher => throw _privateConstructorUsedError;
  int? get totalTeacher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call(
      {List<CoursesSearchResult>? course,
      int? totalCourse,
      List<TeachersSearchResult>? teacher,
      int? totalTeacher});
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
    Object? totalCourse = freezed,
    Object? teacher = freezed,
    Object? totalTeacher = freezed,
  }) {
    return _then(_value.copyWith(
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CoursesSearchResult>?,
      totalCourse: freezed == totalCourse
          ? _value.totalCourse
          : totalCourse // ignore: cast_nullable_to_non_nullable
              as int?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<TeachersSearchResult>?,
      totalTeacher: freezed == totalTeacher
          ? _value.totalTeacher
          : totalTeacher // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultImplCopyWith(
          _$SearchResultImpl value, $Res Function(_$SearchResultImpl) then) =
      __$$SearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CoursesSearchResult>? course,
      int? totalCourse,
      List<TeachersSearchResult>? teacher,
      int? totalTeacher});
}

/// @nodoc
class __$$SearchResultImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultImpl>
    implements _$$SearchResultImplCopyWith<$Res> {
  __$$SearchResultImplCopyWithImpl(
      _$SearchResultImpl _value, $Res Function(_$SearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
    Object? totalCourse = freezed,
    Object? teacher = freezed,
    Object? totalTeacher = freezed,
  }) {
    return _then(_$SearchResultImpl(
      course: freezed == course
          ? _value._course
          : course // ignore: cast_nullable_to_non_nullable
              as List<CoursesSearchResult>?,
      totalCourse: freezed == totalCourse
          ? _value.totalCourse
          : totalCourse // ignore: cast_nullable_to_non_nullable
              as int?,
      teacher: freezed == teacher
          ? _value._teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<TeachersSearchResult>?,
      totalTeacher: freezed == totalTeacher
          ? _value.totalTeacher
          : totalTeacher // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultImpl implements _SearchResult {
  const _$SearchResultImpl(
      {final List<CoursesSearchResult>? course,
      this.totalCourse,
      final List<TeachersSearchResult>? teacher,
      this.totalTeacher})
      : _course = course,
        _teacher = teacher;

  factory _$SearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultImplFromJson(json);

  final List<CoursesSearchResult>? _course;
  @override
  List<CoursesSearchResult>? get course {
    final value = _course;
    if (value == null) return null;
    if (_course is EqualUnmodifiableListView) return _course;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalCourse;
  final List<TeachersSearchResult>? _teacher;
  @override
  List<TeachersSearchResult>? get teacher {
    final value = _teacher;
    if (value == null) return null;
    if (_teacher is EqualUnmodifiableListView) return _teacher;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalTeacher;

  @override
  String toString() {
    return 'SearchResult(course: $course, totalCourse: $totalCourse, teacher: $teacher, totalTeacher: $totalTeacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultImpl &&
            const DeepCollectionEquality().equals(other._course, _course) &&
            (identical(other.totalCourse, totalCourse) ||
                other.totalCourse == totalCourse) &&
            const DeepCollectionEquality().equals(other._teacher, _teacher) &&
            (identical(other.totalTeacher, totalTeacher) ||
                other.totalTeacher == totalTeacher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_course),
      totalCourse,
      const DeepCollectionEquality().hash(_teacher),
      totalTeacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      __$$SearchResultImplCopyWithImpl<_$SearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultImplToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult(
      {final List<CoursesSearchResult>? course,
      final int? totalCourse,
      final List<TeachersSearchResult>? teacher,
      final int? totalTeacher}) = _$SearchResultImpl;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$SearchResultImpl.fromJson;

  @override
  List<CoursesSearchResult>? get course;
  @override
  int? get totalCourse;
  @override
  List<TeachersSearchResult>? get teacher;
  @override
  int? get totalTeacher;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
