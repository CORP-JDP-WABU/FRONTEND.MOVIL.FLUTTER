// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_info_form_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateInfoFormResult _$UpdateInfoFormResultFromJson(Map<String, dynamic> json) {
  return _UpdateInfoFormResult.fromJson(json);
}

/// @nodoc
mixin _$UpdateInfoFormResult {
  bool get isUpdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateInfoFormResultCopyWith<UpdateInfoFormResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateInfoFormResultCopyWith<$Res> {
  factory $UpdateInfoFormResultCopyWith(UpdateInfoFormResult value,
          $Res Function(UpdateInfoFormResult) then) =
      _$UpdateInfoFormResultCopyWithImpl<$Res, UpdateInfoFormResult>;
  @useResult
  $Res call({bool isUpdate});
}

/// @nodoc
class _$UpdateInfoFormResultCopyWithImpl<$Res,
        $Val extends UpdateInfoFormResult>
    implements $UpdateInfoFormResultCopyWith<$Res> {
  _$UpdateInfoFormResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdate = null,
  }) {
    return _then(_value.copyWith(
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateInfoFormResultImplCopyWith<$Res>
    implements $UpdateInfoFormResultCopyWith<$Res> {
  factory _$$UpdateInfoFormResultImplCopyWith(_$UpdateInfoFormResultImpl value,
          $Res Function(_$UpdateInfoFormResultImpl) then) =
      __$$UpdateInfoFormResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUpdate});
}

/// @nodoc
class __$$UpdateInfoFormResultImplCopyWithImpl<$Res>
    extends _$UpdateInfoFormResultCopyWithImpl<$Res, _$UpdateInfoFormResultImpl>
    implements _$$UpdateInfoFormResultImplCopyWith<$Res> {
  __$$UpdateInfoFormResultImplCopyWithImpl(_$UpdateInfoFormResultImpl _value,
      $Res Function(_$UpdateInfoFormResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdate = null,
  }) {
    return _then(_$UpdateInfoFormResultImpl(
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateInfoFormResultImpl implements _UpdateInfoFormResult {
  const _$UpdateInfoFormResultImpl({required this.isUpdate});

  factory _$UpdateInfoFormResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateInfoFormResultImplFromJson(json);

  @override
  final bool isUpdate;

  @override
  String toString() {
    return 'UpdateInfoFormResult(isUpdate: $isUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateInfoFormResultImpl &&
            (identical(other.isUpdate, isUpdate) ||
                other.isUpdate == isUpdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateInfoFormResultImplCopyWith<_$UpdateInfoFormResultImpl>
      get copyWith =>
          __$$UpdateInfoFormResultImplCopyWithImpl<_$UpdateInfoFormResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateInfoFormResultImplToJson(
      this,
    );
  }
}

abstract class _UpdateInfoFormResult implements UpdateInfoFormResult {
  const factory _UpdateInfoFormResult({required final bool isUpdate}) =
      _$UpdateInfoFormResultImpl;

  factory _UpdateInfoFormResult.fromJson(Map<String, dynamic> json) =
      _$UpdateInfoFormResultImpl.fromJson;

  @override
  bool get isUpdate;
  @override
  @JsonKey(ignore: true)
  _$$UpdateInfoFormResultImplCopyWith<_$UpdateInfoFormResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
