// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeacherComment _$TeacherCommentFromJson(Map<String, dynamic> json) {
  return _TeacherComment.fromJson(json);
}

/// @nodoc
mixin _$TeacherComment {
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeacherCommentCopyWith<TeacherComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherCommentCopyWith<$Res> {
  factory $TeacherCommentCopyWith(
          TeacherComment value, $Res Function(TeacherComment) then) =
      _$TeacherCommentCopyWithImpl<$Res, TeacherComment>;
  @useResult
  $Res call({String comment});
}

/// @nodoc
class _$TeacherCommentCopyWithImpl<$Res, $Val extends TeacherComment>
    implements $TeacherCommentCopyWith<$Res> {
  _$TeacherCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TeacherCommentImplCopyWith<$Res>
    implements $TeacherCommentCopyWith<$Res> {
  factory _$$TeacherCommentImplCopyWith(_$TeacherCommentImpl value,
          $Res Function(_$TeacherCommentImpl) then) =
      __$$TeacherCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String comment});
}

/// @nodoc
class __$$TeacherCommentImplCopyWithImpl<$Res>
    extends _$TeacherCommentCopyWithImpl<$Res, _$TeacherCommentImpl>
    implements _$$TeacherCommentImplCopyWith<$Res> {
  __$$TeacherCommentImplCopyWithImpl(
      _$TeacherCommentImpl _value, $Res Function(_$TeacherCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$TeacherCommentImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeacherCommentImpl implements _TeacherComment {
  const _$TeacherCommentImpl({this.comment = ''});

  factory _$TeacherCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeacherCommentImplFromJson(json);

  @override
  @JsonKey()
  final String comment;

  @override
  String toString() {
    return 'TeacherComment(comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherCommentImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherCommentImplCopyWith<_$TeacherCommentImpl> get copyWith =>
      __$$TeacherCommentImplCopyWithImpl<_$TeacherCommentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeacherCommentImplToJson(
      this,
    );
  }
}

abstract class _TeacherComment implements TeacherComment {
  const factory _TeacherComment({final String comment}) = _$TeacherCommentImpl;

  factory _TeacherComment.fromJson(Map<String, dynamic> json) =
      _$TeacherCommentImpl.fromJson;

  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$TeacherCommentImplCopyWith<_$TeacherCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
