// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qualify_teacher_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QualifyTeacherResponse _$QualifyTeacherResponseFromJson(
    Map<String, dynamic> json) {
  return _QualifyTeacherResponse.fromJson(json);
}

/// @nodoc
mixin _$QualifyTeacherResponse {
  bool? get isRemoveTeacherToList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QualifyTeacherResponseCopyWith<QualifyTeacherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualifyTeacherResponseCopyWith<$Res> {
  factory $QualifyTeacherResponseCopyWith(QualifyTeacherResponse value,
          $Res Function(QualifyTeacherResponse) then) =
      _$QualifyTeacherResponseCopyWithImpl<$Res, QualifyTeacherResponse>;
  @useResult
  $Res call({bool? isRemoveTeacherToList});
}

/// @nodoc
class _$QualifyTeacherResponseCopyWithImpl<$Res,
        $Val extends QualifyTeacherResponse>
    implements $QualifyTeacherResponseCopyWith<$Res> {
  _$QualifyTeacherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRemoveTeacherToList = freezed,
  }) {
    return _then(_value.copyWith(
      isRemoveTeacherToList: freezed == isRemoveTeacherToList
          ? _value.isRemoveTeacherToList
          : isRemoveTeacherToList // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QualifyTeacherResponseImplCopyWith<$Res>
    implements $QualifyTeacherResponseCopyWith<$Res> {
  factory _$$QualifyTeacherResponseImplCopyWith(
          _$QualifyTeacherResponseImpl value,
          $Res Function(_$QualifyTeacherResponseImpl) then) =
      __$$QualifyTeacherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isRemoveTeacherToList});
}

/// @nodoc
class __$$QualifyTeacherResponseImplCopyWithImpl<$Res>
    extends _$QualifyTeacherResponseCopyWithImpl<$Res,
        _$QualifyTeacherResponseImpl>
    implements _$$QualifyTeacherResponseImplCopyWith<$Res> {
  __$$QualifyTeacherResponseImplCopyWithImpl(
      _$QualifyTeacherResponseImpl _value,
      $Res Function(_$QualifyTeacherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRemoveTeacherToList = freezed,
  }) {
    return _then(_$QualifyTeacherResponseImpl(
      isRemoveTeacherToList: freezed == isRemoveTeacherToList
          ? _value.isRemoveTeacherToList
          : isRemoveTeacherToList // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QualifyTeacherResponseImpl implements _QualifyTeacherResponse {
  const _$QualifyTeacherResponseImpl({this.isRemoveTeacherToList});

  factory _$QualifyTeacherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QualifyTeacherResponseImplFromJson(json);

  @override
  final bool? isRemoveTeacherToList;

  @override
  String toString() {
    return 'QualifyTeacherResponse(isRemoveTeacherToList: $isRemoveTeacherToList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QualifyTeacherResponseImpl &&
            (identical(other.isRemoveTeacherToList, isRemoveTeacherToList) ||
                other.isRemoveTeacherToList == isRemoveTeacherToList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isRemoveTeacherToList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QualifyTeacherResponseImplCopyWith<_$QualifyTeacherResponseImpl>
      get copyWith => __$$QualifyTeacherResponseImplCopyWithImpl<
          _$QualifyTeacherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QualifyTeacherResponseImplToJson(
      this,
    );
  }
}

abstract class _QualifyTeacherResponse implements QualifyTeacherResponse {
  const factory _QualifyTeacherResponse({final bool? isRemoveTeacherToList}) =
      _$QualifyTeacherResponseImpl;

  factory _QualifyTeacherResponse.fromJson(Map<String, dynamic> json) =
      _$QualifyTeacherResponseImpl.fromJson;

  @override
  bool? get isRemoveTeacherToList;
  @override
  @JsonKey(ignore: true)
  _$$QualifyTeacherResponseImplCopyWith<_$QualifyTeacherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
