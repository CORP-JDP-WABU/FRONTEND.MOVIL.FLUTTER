// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested_update_info_form_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NestedUpdateInfoFormResult _$NestedUpdateInfoFormResultFromJson(
    Map<String, dynamic> json) {
  return _NestedUpdateInfoFormResult.fromJson(json);
}

/// @nodoc
mixin _$NestedUpdateInfoFormResult {
  bool get isUpdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NestedUpdateInfoFormResultCopyWith<NestedUpdateInfoFormResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NestedUpdateInfoFormResultCopyWith<$Res> {
  factory $NestedUpdateInfoFormResultCopyWith(NestedUpdateInfoFormResult value,
          $Res Function(NestedUpdateInfoFormResult) then) =
      _$NestedUpdateInfoFormResultCopyWithImpl<$Res,
          NestedUpdateInfoFormResult>;
  @useResult
  $Res call({bool isUpdate});
}

/// @nodoc
class _$NestedUpdateInfoFormResultCopyWithImpl<$Res,
        $Val extends NestedUpdateInfoFormResult>
    implements $NestedUpdateInfoFormResultCopyWith<$Res> {
  _$NestedUpdateInfoFormResultCopyWithImpl(this._value, this._then);

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
abstract class _$$NestedUpdateInfoFormResultImplCopyWith<$Res>
    implements $NestedUpdateInfoFormResultCopyWith<$Res> {
  factory _$$NestedUpdateInfoFormResultImplCopyWith(
          _$NestedUpdateInfoFormResultImpl value,
          $Res Function(_$NestedUpdateInfoFormResultImpl) then) =
      __$$NestedUpdateInfoFormResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isUpdate});
}

/// @nodoc
class __$$NestedUpdateInfoFormResultImplCopyWithImpl<$Res>
    extends _$NestedUpdateInfoFormResultCopyWithImpl<$Res,
        _$NestedUpdateInfoFormResultImpl>
    implements _$$NestedUpdateInfoFormResultImplCopyWith<$Res> {
  __$$NestedUpdateInfoFormResultImplCopyWithImpl(
      _$NestedUpdateInfoFormResultImpl _value,
      $Res Function(_$NestedUpdateInfoFormResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUpdate = null,
  }) {
    return _then(_$NestedUpdateInfoFormResultImpl(
      isUpdate: null == isUpdate
          ? _value.isUpdate
          : isUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NestedUpdateInfoFormResultImpl implements _NestedUpdateInfoFormResult {
  const _$NestedUpdateInfoFormResultImpl({required this.isUpdate});

  factory _$NestedUpdateInfoFormResultImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NestedUpdateInfoFormResultImplFromJson(json);

  @override
  final bool isUpdate;

  @override
  String toString() {
    return 'NestedUpdateInfoFormResult(isUpdate: $isUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NestedUpdateInfoFormResultImpl &&
            (identical(other.isUpdate, isUpdate) ||
                other.isUpdate == isUpdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NestedUpdateInfoFormResultImplCopyWith<_$NestedUpdateInfoFormResultImpl>
      get copyWith => __$$NestedUpdateInfoFormResultImplCopyWithImpl<
          _$NestedUpdateInfoFormResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NestedUpdateInfoFormResultImplToJson(
      this,
    );
  }
}

abstract class _NestedUpdateInfoFormResult
    implements NestedUpdateInfoFormResult {
  const factory _NestedUpdateInfoFormResult({required final bool isUpdate}) =
      _$NestedUpdateInfoFormResultImpl;

  factory _NestedUpdateInfoFormResult.fromJson(Map<String, dynamic> json) =
      _$NestedUpdateInfoFormResultImpl.fromJson;

  @override
  bool get isUpdate;
  @override
  @JsonKey(ignore: true)
  _$$NestedUpdateInfoFormResultImplCopyWith<_$NestedUpdateInfoFormResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
