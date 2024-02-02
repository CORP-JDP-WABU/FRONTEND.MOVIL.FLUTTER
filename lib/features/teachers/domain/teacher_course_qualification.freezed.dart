// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_course_qualification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherCourseQualification _$TeacherCourseQualificationFromJson(
    Map<String, dynamic> json) {
  return _TeacherCourseQualification.fromJson(json);
}

/// @nodoc
mixin _$TeacherCourseQualification {
  double? get averageQualification => throw _privateConstructorUsedError;
  int? get countQualifications => throw _privateConstructorUsedError;
  Qualification? get qualification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherCourseQualificationCopyWith<TeacherCourseQualification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseQualificationCopyWith<$Res> {
  factory $TeacherCourseQualificationCopyWith(TeacherCourseQualification value,
          $Res Function(TeacherCourseQualification) then) =
      _$TeacherCourseQualificationCopyWithImpl<$Res,
          TeacherCourseQualification>;
  @useResult
  $Res call(
      {double? averageQualification,
      int? countQualifications,
      Qualification? qualification});

  $QualificationCopyWith<$Res>? get qualification;
}

/// @nodoc
class _$TeacherCourseQualificationCopyWithImpl<$Res,
        $Val extends TeacherCourseQualification>
    implements $TeacherCourseQualificationCopyWith<$Res> {
  _$TeacherCourseQualificationCopyWithImpl(this._value, this._then);

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
abstract class _$$TeacherCourseQualificationImplCopyWith<$Res>
    implements $TeacherCourseQualificationCopyWith<$Res> {
  factory _$$TeacherCourseQualificationImplCopyWith(
          _$TeacherCourseQualificationImpl value,
          $Res Function(_$TeacherCourseQualificationImpl) then) =
      __$$TeacherCourseQualificationImplCopyWithImpl<$Res>;
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
class __$$TeacherCourseQualificationImplCopyWithImpl<$Res>
    extends _$TeacherCourseQualificationCopyWithImpl<$Res,
        _$TeacherCourseQualificationImpl>
    implements _$$TeacherCourseQualificationImplCopyWith<$Res> {
  __$$TeacherCourseQualificationImplCopyWithImpl(
      _$TeacherCourseQualificationImpl _value,
      $Res Function(_$TeacherCourseQualificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageQualification = freezed,
    Object? countQualifications = freezed,
    Object? qualification = freezed,
  }) {
    return _then(_$TeacherCourseQualificationImpl(
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
class _$TeacherCourseQualificationImpl implements _TeacherCourseQualification {
  const _$TeacherCourseQualificationImpl(
      {this.averageQualification,
      this.countQualifications,
      this.qualification});

  factory _$TeacherCourseQualificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TeacherCourseQualificationImplFromJson(json);

  @override
  final double? averageQualification;
  @override
  final int? countQualifications;
  @override
  final Qualification? qualification;

  @override
  String toString() {
    return 'TeacherCourseQualification(averageQualification: $averageQualification, countQualifications: $countQualifications, qualification: $qualification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherCourseQualificationImpl &&
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
  _$$TeacherCourseQualificationImplCopyWith<_$TeacherCourseQualificationImpl>
      get copyWith => __$$TeacherCourseQualificationImplCopyWithImpl<
          _$TeacherCourseQualificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherCourseQualificationImplToJson(
      this,
    );
  }
}

abstract class _TeacherCourseQualification
    implements TeacherCourseQualification {
  const factory _TeacherCourseQualification(
      {final double? averageQualification,
      final int? countQualifications,
      final Qualification? qualification}) = _$TeacherCourseQualificationImpl;

  factory _TeacherCourseQualification.fromJson(Map<String, dynamic> json) =
      _$TeacherCourseQualificationImpl.fromJson;

  @override
  double? get averageQualification;
  @override
  int? get countQualifications;
  @override
  Qualification? get qualification;
  @override
  @JsonKey(ignore: true)
  _$$TeacherCourseQualificationImplCopyWith<_$TeacherCourseQualificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
