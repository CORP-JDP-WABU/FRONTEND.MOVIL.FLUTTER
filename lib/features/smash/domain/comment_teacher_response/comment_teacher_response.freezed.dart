// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_teacher_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentTeacherResponse _$CommentTeacherResponseFromJson(
    Map<String, dynamic> json) {
  return _CommentTeacherResponse.fromJson(json);
}

/// @nodoc
mixin _$CommentTeacherResponse {
  bool? get isCommentCreate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentTeacherResponseCopyWith<CommentTeacherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentTeacherResponseCopyWith<$Res> {
  factory $CommentTeacherResponseCopyWith(CommentTeacherResponse value,
          $Res Function(CommentTeacherResponse) then) =
      _$CommentTeacherResponseCopyWithImpl<$Res, CommentTeacherResponse>;
  @useResult
  $Res call({bool? isCommentCreate});
}

/// @nodoc
class _$CommentTeacherResponseCopyWithImpl<$Res,
        $Val extends CommentTeacherResponse>
    implements $CommentTeacherResponseCopyWith<$Res> {
  _$CommentTeacherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCommentCreate = freezed,
  }) {
    return _then(_value.copyWith(
      isCommentCreate: freezed == isCommentCreate
          ? _value.isCommentCreate
          : isCommentCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentTeacherResponseImplCopyWith<$Res>
    implements $CommentTeacherResponseCopyWith<$Res> {
  factory _$$CommentTeacherResponseImplCopyWith(
          _$CommentTeacherResponseImpl value,
          $Res Function(_$CommentTeacherResponseImpl) then) =
      __$$CommentTeacherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isCommentCreate});
}

/// @nodoc
class __$$CommentTeacherResponseImplCopyWithImpl<$Res>
    extends _$CommentTeacherResponseCopyWithImpl<$Res,
        _$CommentTeacherResponseImpl>
    implements _$$CommentTeacherResponseImplCopyWith<$Res> {
  __$$CommentTeacherResponseImplCopyWithImpl(
      _$CommentTeacherResponseImpl _value,
      $Res Function(_$CommentTeacherResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCommentCreate = freezed,
  }) {
    return _then(_$CommentTeacherResponseImpl(
      isCommentCreate: freezed == isCommentCreate
          ? _value.isCommentCreate
          : isCommentCreate // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentTeacherResponseImpl implements _CommentTeacherResponse {
  const _$CommentTeacherResponseImpl({this.isCommentCreate});

  factory _$CommentTeacherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentTeacherResponseImplFromJson(json);

  @override
  final bool? isCommentCreate;

  @override
  String toString() {
    return 'CommentTeacherResponse(isCommentCreate: $isCommentCreate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentTeacherResponseImpl &&
            (identical(other.isCommentCreate, isCommentCreate) ||
                other.isCommentCreate == isCommentCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCommentCreate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentTeacherResponseImplCopyWith<_$CommentTeacherResponseImpl>
      get copyWith => __$$CommentTeacherResponseImplCopyWithImpl<
          _$CommentTeacherResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentTeacherResponseImplToJson(
      this,
    );
  }
}

abstract class _CommentTeacherResponse implements CommentTeacherResponse {
  const factory _CommentTeacherResponse({final bool? isCommentCreate}) =
      _$CommentTeacherResponseImpl;

  factory _CommentTeacherResponse.fromJson(Map<String, dynamic> json) =
      _$CommentTeacherResponseImpl.fromJson;

  @override
  bool? get isCommentCreate;
  @override
  @JsonKey(ignore: true)
  _$$CommentTeacherResponseImplCopyWith<_$CommentTeacherResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
