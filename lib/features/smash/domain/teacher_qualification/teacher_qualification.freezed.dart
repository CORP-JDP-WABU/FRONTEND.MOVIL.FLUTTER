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
  TeacherQualificationRequired get required =>
      throw _privateConstructorUsedError;
  TeacherQualificationOptional get optional =>
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
      {TeacherQualificationRequired required,
      TeacherQualificationOptional optional});

  $TeacherQualificationRequiredCopyWith<$Res> get required;
  $TeacherQualificationOptionalCopyWith<$Res> get optional;
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
    Object? required = null,
    Object? optional = null,
  }) {
    return _then(_value.copyWith(
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as TeacherQualificationRequired,
      optional: null == optional
          ? _value.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as TeacherQualificationOptional,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherQualificationRequiredCopyWith<$Res> get required {
    return $TeacherQualificationRequiredCopyWith<$Res>(_value.required,
        (value) {
      return _then(_value.copyWith(required: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherQualificationOptionalCopyWith<$Res> get optional {
    return $TeacherQualificationOptionalCopyWith<$Res>(_value.optional,
        (value) {
      return _then(_value.copyWith(optional: value) as $Val);
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
      {TeacherQualificationRequired required,
      TeacherQualificationOptional optional});

  @override
  $TeacherQualificationRequiredCopyWith<$Res> get required;
  @override
  $TeacherQualificationOptionalCopyWith<$Res> get optional;
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
    Object? required = null,
    Object? optional = null,
  }) {
    return _then(_$TeacherQualificationImpl(
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as TeacherQualificationRequired,
      optional: null == optional
          ? _value.optional
          : optional // ignore: cast_nullable_to_non_nullable
              as TeacherQualificationOptional,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TeacherQualificationImpl implements _TeacherQualification {
  const _$TeacherQualificationImpl(
      {this.required = const TeacherQualificationRequired(),
      this.optional = const TeacherQualificationOptional()});

  factory _$TeacherQualificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherQualificationImplFromJson(json);

  @override
  @JsonKey()
  final TeacherQualificationRequired required;
  @override
  @JsonKey()
  final TeacherQualificationOptional optional;

  @override
  String toString() {
    return 'TeacherQualification(required: $required, optional: $optional)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherQualificationImpl &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.optional, optional) ||
                other.optional == optional));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, required, optional);

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
          {final TeacherQualificationRequired required,
          final TeacherQualificationOptional optional}) =
      _$TeacherQualificationImpl;

  factory _TeacherQualification.fromJson(Map<String, dynamic> json) =
      _$TeacherQualificationImpl.fromJson;

  @override
  TeacherQualificationRequired get required;
  @override
  TeacherQualificationOptional get optional;
  @override
  @JsonKey(ignore: true)
  _$$TeacherQualificationImplCopyWith<_$TeacherQualificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
