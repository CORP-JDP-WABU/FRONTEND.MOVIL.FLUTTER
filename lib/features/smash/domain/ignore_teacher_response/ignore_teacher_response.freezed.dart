// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ignore_teacher_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IgnoreTeacherResponse _$IgnoreTeacherResponseFromJson(
    Map<String, dynamic> json) {
  return _IgnoreTeacherResponse.fromJson(json);
}

/// @nodoc
mixin _$IgnoreTeacherResponse {
  bool? get isRemoveTeacherToList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IgnoreTeacherResponseCopyWith<IgnoreTeacherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IgnoreTeacherResponseCopyWith<$Res> {
  factory $IgnoreTeacherResponseCopyWith(IgnoreTeacherResponse value,
          $Res Function(IgnoreTeacherResponse) then) =
      _$IgnoreTeacherResponseCopyWithImpl<$Res, IgnoreTeacherResponse>;
  @useResult
  $Res call({bool? isRemoveTeacherToList});
}

/// @nodoc
class _$IgnoreTeacherResponseCopyWithImpl<$Res,
        $Val extends IgnoreTeacherResponse>
    implements $IgnoreTeacherResponseCopyWith<$Res> {
  _$IgnoreTeacherResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$IgnoreTeacherResponseImplCopyWith<$Res>
    implements $IgnoreTeacherResponseCopyWith<$Res> {
  factory _$$IgnoreTeacherResponseImplCopyWith(
          _$IgnoreTeacherResponseImpl value,
          $Res Function(_$IgnoreTeacherResponseImpl) then) =
      __$$IgnoreTeacherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isRemoveTeacherToList});
}

/// @nodoc
class __$$IgnoreTeacherResponseImplCopyWithImpl<$Res>
    extends _$IgnoreTeacherResponseCopyWithImpl<$Res,
        _$IgnoreTeacherResponseImpl>
    implements _$$IgnoreTeacherResponseImplCopyWith<$Res> {
  __$$IgnoreTeacherResponseImplCopyWithImpl(_$IgnoreTeacherResponseImpl _value,
      $Res Function(_$IgnoreTeacherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRemoveTeacherToList = freezed,
  }) {
    return _then(_$IgnoreTeacherResponseImpl(
      isRemoveTeacherToList: freezed == isRemoveTeacherToList
          ? _value.isRemoveTeacherToList
          : isRemoveTeacherToList // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IgnoreTeacherResponseImpl implements _IgnoreTeacherResponse {
  const _$IgnoreTeacherResponseImpl({this.isRemoveTeacherToList});

  factory _$IgnoreTeacherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IgnoreTeacherResponseImplFromJson(json);

  @override
  final bool? isRemoveTeacherToList;

  @override
  String toString() {
    return 'IgnoreTeacherResponse(isRemoveTeacherToList: $isRemoveTeacherToList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IgnoreTeacherResponseImpl &&
            (identical(other.isRemoveTeacherToList, isRemoveTeacherToList) ||
                other.isRemoveTeacherToList == isRemoveTeacherToList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isRemoveTeacherToList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IgnoreTeacherResponseImplCopyWith<_$IgnoreTeacherResponseImpl>
      get copyWith => __$$IgnoreTeacherResponseImplCopyWithImpl<
          _$IgnoreTeacherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IgnoreTeacherResponseImplToJson(
      this,
    );
  }
}

abstract class _IgnoreTeacherResponse implements IgnoreTeacherResponse {
  const factory _IgnoreTeacherResponse({final bool? isRemoveTeacherToList}) =
      _$IgnoreTeacherResponseImpl;

  factory _IgnoreTeacherResponse.fromJson(Map<String, dynamic> json) =
      _$IgnoreTeacherResponseImpl.fromJson;

  @override
  bool? get isRemoveTeacherToList;
  @override
  @JsonKey(ignore: true)
  _$$IgnoreTeacherResponseImplCopyWith<_$IgnoreTeacherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
