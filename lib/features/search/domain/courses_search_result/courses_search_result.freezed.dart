// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoursesSearchResult _$CoursesSearchResultFromJson(Map<String, dynamic> json) {
  return _CoursesSearchResult.fromJson(json);
}

/// @nodoc
mixin _$CoursesSearchResult {
  String? get idCourse => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get countTeachers => throw _privateConstructorUsedError;
  int? get countComment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoursesSearchResultCopyWith<CoursesSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesSearchResultCopyWith<$Res> {
  factory $CoursesSearchResultCopyWith(
          CoursesSearchResult value, $Res Function(CoursesSearchResult) then) =
      _$CoursesSearchResultCopyWithImpl<$Res, CoursesSearchResult>;
  @useResult
  $Res call(
      {String? idCourse, String? name, int? countTeachers, int? countComment});
}

/// @nodoc
class _$CoursesSearchResultCopyWithImpl<$Res, $Val extends CoursesSearchResult>
    implements $CoursesSearchResultCopyWith<$Res> {
  _$CoursesSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = freezed,
    Object? name = freezed,
    Object? countTeachers = freezed,
    Object? countComment = freezed,
  }) {
    return _then(_value.copyWith(
      idCourse: freezed == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countTeachers: freezed == countTeachers
          ? _value.countTeachers
          : countTeachers // ignore: cast_nullable_to_non_nullable
              as int?,
      countComment: freezed == countComment
          ? _value.countComment
          : countComment // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoursesSearchResultImplCopyWith<$Res>
    implements $CoursesSearchResultCopyWith<$Res> {
  factory _$$CoursesSearchResultImplCopyWith(_$CoursesSearchResultImpl value,
          $Res Function(_$CoursesSearchResultImpl) then) =
      __$$CoursesSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? idCourse, String? name, int? countTeachers, int? countComment});
}

/// @nodoc
class __$$CoursesSearchResultImplCopyWithImpl<$Res>
    extends _$CoursesSearchResultCopyWithImpl<$Res, _$CoursesSearchResultImpl>
    implements _$$CoursesSearchResultImplCopyWith<$Res> {
  __$$CoursesSearchResultImplCopyWithImpl(_$CoursesSearchResultImpl _value,
      $Res Function(_$CoursesSearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = freezed,
    Object? name = freezed,
    Object? countTeachers = freezed,
    Object? countComment = freezed,
  }) {
    return _then(_$CoursesSearchResultImpl(
      idCourse: freezed == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      countTeachers: freezed == countTeachers
          ? _value.countTeachers
          : countTeachers // ignore: cast_nullable_to_non_nullable
              as int?,
      countComment: freezed == countComment
          ? _value.countComment
          : countComment // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoursesSearchResultImpl implements _CoursesSearchResult {
  const _$CoursesSearchResultImpl(
      {this.idCourse, this.name, this.countTeachers, this.countComment});

  factory _$CoursesSearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoursesSearchResultImplFromJson(json);

  @override
  final String? idCourse;
  @override
  final String? name;
  @override
  final int? countTeachers;
  @override
  final int? countComment;

  @override
  String toString() {
    return 'CoursesSearchResult(idCourse: $idCourse, name: $name, countTeachers: $countTeachers, countComment: $countComment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoursesSearchResultImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.countTeachers, countTeachers) ||
                other.countTeachers == countTeachers) &&
            (identical(other.countComment, countComment) ||
                other.countComment == countComment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idCourse, name, countTeachers, countComment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoursesSearchResultImplCopyWith<_$CoursesSearchResultImpl> get copyWith =>
      __$$CoursesSearchResultImplCopyWithImpl<_$CoursesSearchResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoursesSearchResultImplToJson(
      this,
    );
  }
}

abstract class _CoursesSearchResult implements CoursesSearchResult {
  const factory _CoursesSearchResult(
      {final String? idCourse,
      final String? name,
      final int? countTeachers,
      final int? countComment}) = _$CoursesSearchResultImpl;

  factory _CoursesSearchResult.fromJson(Map<String, dynamic> json) =
      _$CoursesSearchResultImpl.fromJson;

  @override
  String? get idCourse;
  @override
  String? get name;
  @override
  int? get countTeachers;
  @override
  int? get countComment;
  @override
  @JsonKey(ignore: true)
  _$$CoursesSearchResultImplCopyWith<_$CoursesSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
