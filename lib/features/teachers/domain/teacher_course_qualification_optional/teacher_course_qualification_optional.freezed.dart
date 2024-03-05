// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_course_qualification_optional.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherCourseQualificationOptional _$TeacherCourseQualificationOptionalFromJson(
    Map<String, dynamic> json) {
  return _TeacherCourseQualificationOptional.fromJson(json);
}

/// @nodoc
mixin _$TeacherCourseQualificationOptional {
  double? get averageQualification => throw _privateConstructorUsedError;
  int? get countQualifications => throw _privateConstructorUsedError;
  Qualification? get qualification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherCourseQualificationOptionalCopyWith<
          TeacherCourseQualificationOptional>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseQualificationOptionalCopyWith<$Res> {
  factory $TeacherCourseQualificationOptionalCopyWith(
          TeacherCourseQualificationOptional value,
          $Res Function(TeacherCourseQualificationOptional) then) =
      _$TeacherCourseQualificationOptionalCopyWithImpl<$Res,
          TeacherCourseQualificationOptional>;
  @useResult
  $Res call(
      {double? averageQualification,
      int? countQualifications,
      Qualification? qualification});

  $QualificationCopyWith<$Res>? get qualification;
}

/// @nodoc
class _$TeacherCourseQualificationOptionalCopyWithImpl<$Res,
        $Val extends TeacherCourseQualificationOptional>
    implements $TeacherCourseQualificationOptionalCopyWith<$Res> {
  _$TeacherCourseQualificationOptionalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageQualification = freezed,
    Object? countQualifications = freezed,
    Object? qualification = freezed,
  }) {
    return _then(_value.copyWith(
      averageQualification: freezed == averageQualification
          ? _value.averageQualification
          : averageQualification // ignore: cast_nullable_to_non_nullable
              as double?,
      countQualifications: freezed == countQualifications
          ? _value.countQualifications
          : countQualifications // ignore: cast_nullable_to_non_nullable
              as int?,
      qualification: freezed == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QualificationCopyWith<$Res>? get qualification {
    if (_value.qualification == null) {
      return null;
    }

    return $QualificationCopyWith<$Res>(_value.qualification!, (value) {
      return _then(_value.copyWith(qualification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherCourseQualificationOptionalImplCopyWith<$Res>
    implements $TeacherCourseQualificationOptionalCopyWith<$Res> {
  factory _$$TeacherCourseQualificationOptionalImplCopyWith(
          _$TeacherCourseQualificationOptionalImpl value,
          $Res Function(_$TeacherCourseQualificationOptionalImpl) then) =
      __$$TeacherCourseQualificationOptionalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? averageQualification,
      int? countQualifications,
      Qualification? qualification});

  @override
  $QualificationCopyWith<$Res>? get qualification;
}

/// @nodoc
class __$$TeacherCourseQualificationOptionalImplCopyWithImpl<$Res>
    extends _$TeacherCourseQualificationOptionalCopyWithImpl<$Res,
        _$TeacherCourseQualificationOptionalImpl>
    implements _$$TeacherCourseQualificationOptionalImplCopyWith<$Res> {
  __$$TeacherCourseQualificationOptionalImplCopyWithImpl(
      _$TeacherCourseQualificationOptionalImpl _value,
      $Res Function(_$TeacherCourseQualificationOptionalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageQualification = freezed,
    Object? countQualifications = freezed,
    Object? qualification = freezed,
  }) {
    return _then(_$TeacherCourseQualificationOptionalImpl(
      averageQualification: freezed == averageQualification
          ? _value.averageQualification
          : averageQualification // ignore: cast_nullable_to_non_nullable
              as double?,
      countQualifications: freezed == countQualifications
          ? _value.countQualifications
          : countQualifications // ignore: cast_nullable_to_non_nullable
              as int?,
      qualification: freezed == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherCourseQualificationOptionalImpl
    implements _TeacherCourseQualificationOptional {
  const _$TeacherCourseQualificationOptionalImpl(
      {this.averageQualification,
      this.countQualifications,
      this.qualification});

  factory _$TeacherCourseQualificationOptionalImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TeacherCourseQualificationOptionalImplFromJson(json);

  @override
  final double? averageQualification;
  @override
  final int? countQualifications;
  @override
  final Qualification? qualification;

  @override
  String toString() {
    return 'TeacherCourseQualificationOptional(averageQualification: $averageQualification, countQualifications: $countQualifications, qualification: $qualification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherCourseQualificationOptionalImpl &&
            (identical(other.averageQualification, averageQualification) ||
                other.averageQualification == averageQualification) &&
            (identical(other.countQualifications, countQualifications) ||
                other.countQualifications == countQualifications) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, averageQualification, countQualifications, qualification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherCourseQualificationOptionalImplCopyWith<
          _$TeacherCourseQualificationOptionalImpl>
      get copyWith => __$$TeacherCourseQualificationOptionalImplCopyWithImpl<
          _$TeacherCourseQualificationOptionalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherCourseQualificationOptionalImplToJson(
      this,
    );
  }
}

abstract class _TeacherCourseQualificationOptional
    implements TeacherCourseQualificationOptional {
  const factory _TeacherCourseQualificationOptional(
          {final double? averageQualification,
          final int? countQualifications,
          final Qualification? qualification}) =
      _$TeacherCourseQualificationOptionalImpl;

  factory _TeacherCourseQualificationOptional.fromJson(
          Map<String, dynamic> json) =
      _$TeacherCourseQualificationOptionalImpl.fromJson;

  @override
  double? get averageQualification;
  @override
  int? get countQualifications;
  @override
  Qualification? get qualification;
  @override
  @JsonKey(ignore: true)
  _$$TeacherCourseQualificationOptionalImplCopyWith<
          _$TeacherCourseQualificationOptionalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
