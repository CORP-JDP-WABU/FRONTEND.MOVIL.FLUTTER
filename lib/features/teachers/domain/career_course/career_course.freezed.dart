// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career_course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CareerCourse _$CareerCourseFromJson(Map<String, dynamic> json) {
  return _CareerCourse.fromJson(json);
}

/// @nodoc
mixin _$CareerCourse {
  String? get idCourse => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CareerCourseCopyWith<CareerCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerCourseCopyWith<$Res> {
  factory $CareerCourseCopyWith(
          CareerCourse value, $Res Function(CareerCourse) then) =
      _$CareerCourseCopyWithImpl<$Res, CareerCourse>;
  @useResult
  $Res call({String? idCourse, String? name});
}

/// @nodoc
class _$CareerCourseCopyWithImpl<$Res, $Val extends CareerCourse>
    implements $CareerCourseCopyWith<$Res> {
  _$CareerCourseCopyWithImpl(this._value, this._then);

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
abstract class _$$CareerCourseImplCopyWith<$Res>
    implements $CareerCourseCopyWith<$Res> {
  factory _$$CareerCourseImplCopyWith(
          _$CareerCourseImpl value, $Res Function(_$CareerCourseImpl) then) =
      __$$CareerCourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? idCourse, String? name});
}

/// @nodoc
class __$$CareerCourseImplCopyWithImpl<$Res>
    extends _$CareerCourseCopyWithImpl<$Res, _$CareerCourseImpl>
    implements _$$CareerCourseImplCopyWith<$Res> {
  __$$CareerCourseImplCopyWithImpl(
      _$CareerCourseImpl _value, $Res Function(_$CareerCourseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = freezed,
    Object? name = freezed,
  }) {
    return _then(_$CareerCourseImpl(
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
class _$CareerCourseImpl implements _CareerCourse {
  const _$CareerCourseImpl({this.idCourse, this.name});

  factory _$CareerCourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareerCourseImplFromJson(json);

  @override
  final String? idCourse;
  @override
  final String? name;

  @override
  String toString() {
    return 'CareerCourse(idCourse: $idCourse, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerCourseImpl &&
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
  _$$CareerCourseImplCopyWith<_$CareerCourseImpl> get copyWith =>
      __$$CareerCourseImplCopyWithImpl<_$CareerCourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareerCourseImplToJson(
      this,
    );
  }
}

abstract class _CareerCourse implements CareerCourse {
  const factory _CareerCourse({final String? idCourse, final String? name}) =
      _$CareerCourseImpl;

  factory _CareerCourse.fromJson(Map<String, dynamic> json) =
      _$CareerCourseImpl.fromJson;

  @override
  String? get idCourse;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$CareerCourseImplCopyWith<_$CareerCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
