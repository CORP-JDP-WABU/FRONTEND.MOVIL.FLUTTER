// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_qualification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherQualification _$TeacherQualificationFromJson(Map<String, dynamic> json) {
  return _TeacherQualification.fromJson(json);
}

/// @nodoc
mixin _$TeacherQualification {
  TeacherQualificationRequired get teacherQualificationRequired =>
      throw _privateConstructorUsedError;
  TeacherQualificationOptional get teacherQualificationOptional =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherQualificationCopyWith<TeacherQualification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherQualificationCopyWith<$Res> {
  factory $TeacherQualificationCopyWith(TeacherQualification value,
          $Res Function(TeacherQualification) then) =
      _$TeacherQualificationCopyWithImpl<$Res, TeacherQualification>;
  @useResult
  $Res call(
      {TeacherQualificationRequired teacherQualificationRequired,
      TeacherQualificationOptional teacherQualificationOptional});

  $TeacherQualificationRequiredCopyWith<$Res> get teacherQualificationRequired;
  $TeacherQualificationOptionalCopyWith<$Res> get teacherQualificationOptional;
}

/// @nodoc
class _$TeacherQualificationCopyWithImpl<$Res,
        $Val extends TeacherQualification>
    implements $TeacherQualificationCopyWith<$Res> {
  _$TeacherQualificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherQualificationRequired = null,
    Object? teacherQualificationOptional = null,
  }) {
    return _then(_value.copyWith(
      teacherQualificationRequired: null == teacherQualificationRequired
          ? _value.teacherQualificationRequired
          : teacherQualificationRequired // ignore: cast_nullable_to_non_nullable
              as TeacherQualificationRequired,
      teacherQualificationOptional: null == teacherQualificationOptional
          ? _value.teacherQualificationOptional
          : teacherQualificationOptional // ignore: cast_nullable_to_non_nullable
              as TeacherQualificationOptional,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherQualificationRequiredCopyWith<$Res> get teacherQualificationRequired {
    return $TeacherQualificationRequiredCopyWith<$Res>(
        _value.teacherQualificationRequired, (value) {
      return _then(
          _value.copyWith(teacherQualificationRequired: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherQualificationOptionalCopyWith<$Res> get teacherQualificationOptional {
    return $TeacherQualificationOptionalCopyWith<$Res>(
        _value.teacherQualificationOptional, (value) {
      return _then(
          _value.copyWith(teacherQualificationOptional: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherQualificationImplCopyWith<$Res>
    implements $TeacherQualificationCopyWith<$Res> {
  factory _$$TeacherQualificationImplCopyWith(_$TeacherQualificationImpl value,
          $Res Function(_$TeacherQualificationImpl) then) =
      __$$TeacherQualificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TeacherQualificationRequired teacherQualificationRequired,
      TeacherQualificationOptional teacherQualificationOptional});

  @override
  $TeacherQualificationRequiredCopyWith<$Res> get teacherQualificationRequired;
  @override
  $TeacherQualificationOptionalCopyWith<$Res> get teacherQualificationOptional;
}

/// @nodoc
class __$$TeacherQualificationImplCopyWithImpl<$Res>
    extends _$TeacherQualificationCopyWithImpl<$Res, _$TeacherQualificationImpl>
    implements _$$TeacherQualificationImplCopyWith<$Res> {
  __$$TeacherQualificationImplCopyWithImpl(_$TeacherQualificationImpl _value,
      $Res Function(_$TeacherQualificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherQualificationRequired = null,
    Object? teacherQualificationOptional = null,
  }) {
    return _then(_$TeacherQualificationImpl(
      teacherQualificationRequired: null == teacherQualificationRequired
          ? _value.teacherQualificationRequired
          : teacherQualificationRequired // ignore: cast_nullable_to_non_nullable
              as TeacherQualificationRequired,
      teacherQualificationOptional: null == teacherQualificationOptional
          ? _value.teacherQualificationOptional
          : teacherQualificationOptional // ignore: cast_nullable_to_non_nullable
              as TeacherQualificationOptional,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherQualificationImpl implements _TeacherQualification {
  const _$TeacherQualificationImpl(
      {this.teacherQualificationRequired = const TeacherQualificationRequired(),
      this.teacherQualificationOptional =
          const TeacherQualificationOptional()});

  factory _$TeacherQualificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherQualificationImplFromJson(json);

  @override
  @JsonKey()
  final TeacherQualificationRequired teacherQualificationRequired;
  @override
  @JsonKey()
  final TeacherQualificationOptional teacherQualificationOptional;

  @override
  String toString() {
    return 'TeacherQualification(teacherQualificationRequired: $teacherQualificationRequired, teacherQualificationOptional: $teacherQualificationOptional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherQualificationImpl &&
            (identical(other.teacherQualificationRequired,
                    teacherQualificationRequired) ||
                other.teacherQualificationRequired ==
                    teacherQualificationRequired) &&
            (identical(other.teacherQualificationOptional,
                    teacherQualificationOptional) ||
                other.teacherQualificationOptional ==
                    teacherQualificationOptional));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, teacherQualificationRequired, teacherQualificationOptional);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherQualificationImplCopyWith<_$TeacherQualificationImpl>
      get copyWith =>
          __$$TeacherQualificationImplCopyWithImpl<_$TeacherQualificationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherQualificationImplToJson(
      this,
    );
  }
}

abstract class _TeacherQualification implements TeacherQualification {
  const factory _TeacherQualification(
          {final TeacherQualificationRequired teacherQualificationRequired,
          final TeacherQualificationOptional teacherQualificationOptional}) =
      _$TeacherQualificationImpl;

  factory _TeacherQualification.fromJson(Map<String, dynamic> json) =
      _$TeacherQualificationImpl.fromJson;

  @override
  TeacherQualificationRequired get teacherQualificationRequired;
  @override
  TeacherQualificationOptional get teacherQualificationOptional;
  @override
  @JsonKey(ignore: true)
  _$$TeacherQualificationImplCopyWith<_$TeacherQualificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
