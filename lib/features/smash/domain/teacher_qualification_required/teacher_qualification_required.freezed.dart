// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_qualification_required.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherQualificationRequired _$TeacherQualificationRequiredFromJson(
    Map<String, dynamic> json) {
  return _TeacherQualificationRequired.fromJson(json);
}

/// @nodoc
mixin _$TeacherQualificationRequired {
  int get learn => throw _privateConstructorUsedError;
  int get hight => throw _privateConstructorUsedError;
  int get goodPeople => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherQualificationRequiredCopyWith<TeacherQualificationRequired>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherQualificationRequiredCopyWith<$Res> {
  factory $TeacherQualificationRequiredCopyWith(
          TeacherQualificationRequired value,
          $Res Function(TeacherQualificationRequired) then) =
      _$TeacherQualificationRequiredCopyWithImpl<$Res,
          TeacherQualificationRequired>;
  @useResult
  $Res call({int learn, int hight, int goodPeople});
}

/// @nodoc
class _$TeacherQualificationRequiredCopyWithImpl<$Res,
        $Val extends TeacherQualificationRequired>
    implements $TeacherQualificationRequiredCopyWith<$Res> {
  _$TeacherQualificationRequiredCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? learn = null,
    Object? hight = null,
    Object? goodPeople = null,
  }) {
    return _then(_value.copyWith(
      learn: null == learn
          ? _value.learn
          : learn // ignore: cast_nullable_to_non_nullable
              as int,
      hight: null == hight
          ? _value.hight
          : hight // ignore: cast_nullable_to_non_nullable
              as int,
      goodPeople: null == goodPeople
          ? _value.goodPeople
          : goodPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherQualificationRequiredImplCopyWith<$Res>
    implements $TeacherQualificationRequiredCopyWith<$Res> {
  factory _$$TeacherQualificationRequiredImplCopyWith(
          _$TeacherQualificationRequiredImpl value,
          $Res Function(_$TeacherQualificationRequiredImpl) then) =
      __$$TeacherQualificationRequiredImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int learn, int hight, int goodPeople});
}

/// @nodoc
class __$$TeacherQualificationRequiredImplCopyWithImpl<$Res>
    extends _$TeacherQualificationRequiredCopyWithImpl<$Res,
        _$TeacherQualificationRequiredImpl>
    implements _$$TeacherQualificationRequiredImplCopyWith<$Res> {
  __$$TeacherQualificationRequiredImplCopyWithImpl(
      _$TeacherQualificationRequiredImpl _value,
      $Res Function(_$TeacherQualificationRequiredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? learn = null,
    Object? hight = null,
    Object? goodPeople = null,
  }) {
    return _then(_$TeacherQualificationRequiredImpl(
      learn: null == learn
          ? _value.learn
          : learn // ignore: cast_nullable_to_non_nullable
              as int,
      hight: null == hight
          ? _value.hight
          : hight // ignore: cast_nullable_to_non_nullable
              as int,
      goodPeople: null == goodPeople
          ? _value.goodPeople
          : goodPeople // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherQualificationRequiredImpl
    implements _TeacherQualificationRequired {
  const _$TeacherQualificationRequiredImpl(
      {this.learn = 0, this.hight = 0, this.goodPeople = 0});

  factory _$TeacherQualificationRequiredImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TeacherQualificationRequiredImplFromJson(json);

  @override
  @JsonKey()
  final int learn;
  @override
  @JsonKey()
  final int hight;
  @override
  @JsonKey()
  final int goodPeople;

  @override
  String toString() {
    return 'TeacherQualificationRequired(learn: $learn, hight: $hight, goodPeople: $goodPeople)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherQualificationRequiredImpl &&
            (identical(other.learn, learn) || other.learn == learn) &&
            (identical(other.hight, hight) || other.hight == hight) &&
            (identical(other.goodPeople, goodPeople) ||
                other.goodPeople == goodPeople));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, learn, hight, goodPeople);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherQualificationRequiredImplCopyWith<
          _$TeacherQualificationRequiredImpl>
      get copyWith => __$$TeacherQualificationRequiredImplCopyWithImpl<
          _$TeacherQualificationRequiredImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherQualificationRequiredImplToJson(
      this,
    );
  }
}

abstract class _TeacherQualificationRequired
    implements TeacherQualificationRequired {
  const factory _TeacherQualificationRequired(
      {final int learn,
      final int hight,
      final int goodPeople}) = _$TeacherQualificationRequiredImpl;

  factory _TeacherQualificationRequired.fromJson(Map<String, dynamic> json) =
      _$TeacherQualificationRequiredImpl.fromJson;

  @override
  int get learn;
  @override
  int get hight;
  @override
  int get goodPeople;
  @override
  @JsonKey(ignore: true)
  _$$TeacherQualificationRequiredImplCopyWith<
          _$TeacherQualificationRequiredImpl>
      get copyWith => throw _privateConstructorUsedError;
}
