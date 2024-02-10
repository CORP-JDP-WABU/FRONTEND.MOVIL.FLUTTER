// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'smash_suggestion_course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmashSuggestionCourse _$SmashSuggestionCourseFromJson(
    Map<String, dynamic> json) {
  return _SmashSuggestionCourse.fromJson(json);
}

/// @nodoc
mixin _$SmashSuggestionCourse {
  String? get idCourse => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmashSuggestionCourseCopyWith<SmashSuggestionCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmashSuggestionCourseCopyWith<$Res> {
  factory $SmashSuggestionCourseCopyWith(SmashSuggestionCourse value,
          $Res Function(SmashSuggestionCourse) then) =
      _$SmashSuggestionCourseCopyWithImpl<$Res, SmashSuggestionCourse>;
  @useResult
  $Res call({String? idCourse, String? name});
}

/// @nodoc
class _$SmashSuggestionCourseCopyWithImpl<$Res,
        $Val extends SmashSuggestionCourse>
    implements $SmashSuggestionCourseCopyWith<$Res> {
  _$SmashSuggestionCourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmashSuggestionCourseImplCopyWith<$Res>
    implements $SmashSuggestionCourseCopyWith<$Res> {
  factory _$$SmashSuggestionCourseImplCopyWith(
          _$SmashSuggestionCourseImpl value,
          $Res Function(_$SmashSuggestionCourseImpl) then) =
      __$$SmashSuggestionCourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? idCourse, String? name});
}

/// @nodoc
class __$$SmashSuggestionCourseImplCopyWithImpl<$Res>
    extends _$SmashSuggestionCourseCopyWithImpl<$Res,
        _$SmashSuggestionCourseImpl>
    implements _$$SmashSuggestionCourseImplCopyWith<$Res> {
  __$$SmashSuggestionCourseImplCopyWithImpl(_$SmashSuggestionCourseImpl _value,
      $Res Function(_$SmashSuggestionCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SmashSuggestionCourseImpl(
      idCourse: freezed == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SmashSuggestionCourseImpl implements _SmashSuggestionCourse {
  const _$SmashSuggestionCourseImpl({this.idCourse, this.name});

  factory _$SmashSuggestionCourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SmashSuggestionCourseImplFromJson(json);

  @override
  final String? idCourse;
  @override
  final String? name;

  @override
  String toString() {
    return 'SmashSuggestionCourse(idCourse: $idCourse, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmashSuggestionCourseImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idCourse, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SmashSuggestionCourseImplCopyWith<_$SmashSuggestionCourseImpl>
      get copyWith => __$$SmashSuggestionCourseImplCopyWithImpl<
          _$SmashSuggestionCourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SmashSuggestionCourseImplToJson(
      this,
    );
  }
}

abstract class _SmashSuggestionCourse implements SmashSuggestionCourse {
  const factory _SmashSuggestionCourse(
      {final String? idCourse,
      final String? name}) = _$SmashSuggestionCourseImpl;

  factory _SmashSuggestionCourse.fromJson(Map<String, dynamic> json) =
      _$SmashSuggestionCourseImpl.fromJson;

  @override
  String? get idCourse;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$SmashSuggestionCourseImplCopyWith<_$SmashSuggestionCourseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
