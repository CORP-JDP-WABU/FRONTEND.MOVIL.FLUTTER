// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_course_qualification_required.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherCourseQualificationRequired _$TeacherCourseQualificationRequiredFromJson(
    Map<String, dynamic> json) {
  return _TeacherCourseQualificationRequired.fromJson(json);
}

/// @nodoc
mixin _$TeacherCourseQualificationRequired {
  double? get averageQualification => throw _privateConstructorUsedError;
  Qualification? get qualification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherCourseQualificationRequiredCopyWith<
          TeacherCourseQualificationRequired>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCourseQualificationRequiredCopyWith<$Res> {
  factory $TeacherCourseQualificationRequiredCopyWith(
          TeacherCourseQualificationRequired value,
          $Res Function(TeacherCourseQualificationRequired) then) =
      _$TeacherCourseQualificationRequiredCopyWithImpl<$Res,
          TeacherCourseQualificationRequired>;
  @useResult
  $Res call({double? averageQualification, Qualification? qualification});

  $QualificationCopyWith<$Res>? get qualification;
}

/// @nodoc
class _$TeacherCourseQualificationRequiredCopyWithImpl<$Res,
        $Val extends TeacherCourseQualificationRequired>
    implements $TeacherCourseQualificationRequiredCopyWith<$Res> {
  _$TeacherCourseQualificationRequiredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageQualification = freezed,
    Object? qualification = freezed,
  }) {
    return _then(_value.copyWith(
      averageQualification: freezed == averageQualification
          ? _value.averageQualification
          : averageQualification // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$TeacherCourseQualificationRequiredImplCopyWith<$Res>
    implements $TeacherCourseQualificationRequiredCopyWith<$Res> {
  factory _$$TeacherCourseQualificationRequiredImplCopyWith(
          _$TeacherCourseQualificationRequiredImpl value,
          $Res Function(_$TeacherCourseQualificationRequiredImpl) then) =
      __$$TeacherCourseQualificationRequiredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? averageQualification, Qualification? qualification});

  @override
  $QualificationCopyWith<$Res>? get qualification;
}

/// @nodoc
class __$$TeacherCourseQualificationRequiredImplCopyWithImpl<$Res>
    extends _$TeacherCourseQualificationRequiredCopyWithImpl<$Res,
        _$TeacherCourseQualificationRequiredImpl>
    implements _$$TeacherCourseQualificationRequiredImplCopyWith<$Res> {
  __$$TeacherCourseQualificationRequiredImplCopyWithImpl(
      _$TeacherCourseQualificationRequiredImpl _value,
      $Res Function(_$TeacherCourseQualificationRequiredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? averageQualification = freezed,
    Object? qualification = freezed,
  }) {
    return _then(_$TeacherCourseQualificationRequiredImpl(
      averageQualification: freezed == averageQualification
          ? _value.averageQualification
          : averageQualification // ignore: cast_nullable_to_non_nullable
              as double?,
      qualification: freezed == qualification
          ? _value.qualification
          : qualification // ignore: cast_nullable_to_non_nullable
              as Qualification?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherCourseQualificationRequiredImpl
    implements _TeacherCourseQualificationRequired {
  const _$TeacherCourseQualificationRequiredImpl(
      {this.averageQualification, this.qualification});

  factory _$TeacherCourseQualificationRequiredImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TeacherCourseQualificationRequiredImplFromJson(json);

  @override
  final double? averageQualification;
  @override
  final Qualification? qualification;

  @override
  String toString() {
    return 'TeacherCourseQualificationRequired(averageQualification: $averageQualification, qualification: $qualification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherCourseQualificationRequiredImpl &&
            (identical(other.averageQualification, averageQualification) ||
                other.averageQualification == averageQualification) &&
            (identical(other.qualification, qualification) ||
                other.qualification == qualification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, averageQualification, qualification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherCourseQualificationRequiredImplCopyWith<
          _$TeacherCourseQualificationRequiredImpl>
      get copyWith => __$$TeacherCourseQualificationRequiredImplCopyWithImpl<
          _$TeacherCourseQualificationRequiredImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherCourseQualificationRequiredImplToJson(
      this,
    );
  }
}

abstract class _TeacherCourseQualificationRequired
    implements TeacherCourseQualificationRequired {
  const factory _TeacherCourseQualificationRequired(
          {final double? averageQualification,
          final Qualification? qualification}) =
      _$TeacherCourseQualificationRequiredImpl;

  factory _TeacherCourseQualificationRequired.fromJson(
          Map<String, dynamic> json) =
      _$TeacherCourseQualificationRequiredImpl.fromJson;

  @override
  double? get averageQualification;
  @override
  Qualification? get qualification;
  @override
  @JsonKey(ignore: true)
  _$$TeacherCourseQualificationRequiredImplCopyWith<
          _$TeacherCourseQualificationRequiredImpl>
      get copyWith => throw _privateConstructorUsedError;
}
