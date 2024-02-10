// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_qualification_optional.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherQualificationOptional _$TeacherQualificationOptionalFromJson(
    Map<String, dynamic> json) {
  return _TeacherQualificationOptional.fromJson(json);
}

/// @nodoc
mixin _$TeacherQualificationOptional {
  int get worked => throw _privateConstructorUsedError;
  int get late => throw _privateConstructorUsedError;
  int get assistance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherQualificationOptionalCopyWith<TeacherQualificationOptional>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherQualificationOptionalCopyWith<$Res> {
  factory $TeacherQualificationOptionalCopyWith(
          TeacherQualificationOptional value,
          $Res Function(TeacherQualificationOptional) then) =
      _$TeacherQualificationOptionalCopyWithImpl<$Res,
          TeacherQualificationOptional>;
  @useResult
  $Res call({int worked, int late, int assistance});
}

/// @nodoc
class _$TeacherQualificationOptionalCopyWithImpl<$Res,
        $Val extends TeacherQualificationOptional>
    implements $TeacherQualificationOptionalCopyWith<$Res> {
  _$TeacherQualificationOptionalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? worked = null,
    Object? late = null,
    Object? assistance = null,
  }) {
    return _then(_value.copyWith(
      worked: null == worked
          ? _value.worked
          : worked // ignore: cast_nullable_to_non_nullable
              as int,
      late: null == late
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as int,
      assistance: null == assistance
          ? _value.assistance
          : assistance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherQualificationOptionalImplCopyWith<$Res>
    implements $TeacherQualificationOptionalCopyWith<$Res> {
  factory _$$TeacherQualificationOptionalImplCopyWith(
          _$TeacherQualificationOptionalImpl value,
          $Res Function(_$TeacherQualificationOptionalImpl) then) =
      __$$TeacherQualificationOptionalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int worked, int late, int assistance});
}

/// @nodoc
class __$$TeacherQualificationOptionalImplCopyWithImpl<$Res>
    extends _$TeacherQualificationOptionalCopyWithImpl<$Res,
        _$TeacherQualificationOptionalImpl>
    implements _$$TeacherQualificationOptionalImplCopyWith<$Res> {
  __$$TeacherQualificationOptionalImplCopyWithImpl(
      _$TeacherQualificationOptionalImpl _value,
      $Res Function(_$TeacherQualificationOptionalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? worked = null,
    Object? late = null,
    Object? assistance = null,
  }) {
    return _then(_$TeacherQualificationOptionalImpl(
      worked: null == worked
          ? _value.worked
          : worked // ignore: cast_nullable_to_non_nullable
              as int,
      late: null == late
          ? _value.late
          : late // ignore: cast_nullable_to_non_nullable
              as int,
      assistance: null == assistance
          ? _value.assistance
          : assistance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherQualificationOptionalImpl
    implements _TeacherQualificationOptional {
  const _$TeacherQualificationOptionalImpl(
      {this.worked = 0, this.late = 0, this.assistance = 0});

  factory _$TeacherQualificationOptionalImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TeacherQualificationOptionalImplFromJson(json);

  @override
  @JsonKey()
  final int worked;
  @override
  @JsonKey()
  final int late;
  @override
  @JsonKey()
  final int assistance;

  @override
  String toString() {
    return 'TeacherQualificationOptional(worked: $worked, late: $late, assistance: $assistance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherQualificationOptionalImpl &&
            (identical(other.worked, worked) || other.worked == worked) &&
            (identical(other.late, late) || other.late == late) &&
            (identical(other.assistance, assistance) ||
                other.assistance == assistance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, worked, late, assistance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherQualificationOptionalImplCopyWith<
          _$TeacherQualificationOptionalImpl>
      get copyWith => __$$TeacherQualificationOptionalImplCopyWithImpl<
          _$TeacherQualificationOptionalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherQualificationOptionalImplToJson(
      this,
    );
  }
}

abstract class _TeacherQualificationOptional
    implements TeacherQualificationOptional {
  const factory _TeacherQualificationOptional(
      {final int worked,
      final int late,
      final int assistance}) = _$TeacherQualificationOptionalImpl;

  factory _TeacherQualificationOptional.fromJson(Map<String, dynamic> json) =
      _$TeacherQualificationOptionalImpl.fromJson;

  @override
  int get worked;
  @override
  int get late;
  @override
  int get assistance;
  @override
  @JsonKey(ignore: true)
  _$$TeacherQualificationOptionalImplCopyWith<
          _$TeacherQualificationOptionalImpl>
      get copyWith => throw _privateConstructorUsedError;
}
