// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherProfileState {
  Teacher? get teacher => throw _privateConstructorUsedError;
  dynamic get pageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TeacherProfileStateCopyWith<TeacherProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherProfileStateCopyWith<$Res> {
  factory $TeacherProfileStateCopyWith(
          TeacherProfileState value, $Res Function(TeacherProfileState) then) =
      _$TeacherProfileStateCopyWithImpl<$Res, TeacherProfileState>;
  @useResult
  $Res call({Teacher? teacher, dynamic pageStatus});

  $TeacherCopyWith<$Res>? get teacher;
}

/// @nodoc
class _$TeacherProfileStateCopyWithImpl<$Res, $Val extends TeacherProfileState>
    implements $TeacherProfileStateCopyWith<$Res> {
  _$TeacherProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = freezed,
    Object? pageStatus = freezed,
  }) {
    return _then(_value.copyWith(
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      pageStatus: freezed == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherCopyWith<$Res>? get teacher {
    if (_value.teacher == null) {
      return null;
    }

    return $TeacherCopyWith<$Res>(_value.teacher!, (value) {
      return _then(_value.copyWith(teacher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeacherProfileStateImplCopyWith<$Res>
    implements $TeacherProfileStateCopyWith<$Res> {
  factory _$$TeacherProfileStateImplCopyWith(_$TeacherProfileStateImpl value,
          $Res Function(_$TeacherProfileStateImpl) then) =
      __$$TeacherProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Teacher? teacher, dynamic pageStatus});

  @override
  $TeacherCopyWith<$Res>? get teacher;
}

/// @nodoc
class __$$TeacherProfileStateImplCopyWithImpl<$Res>
    extends _$TeacherProfileStateCopyWithImpl<$Res, _$TeacherProfileStateImpl>
    implements _$$TeacherProfileStateImplCopyWith<$Res> {
  __$$TeacherProfileStateImplCopyWithImpl(_$TeacherProfileStateImpl _value,
      $Res Function(_$TeacherProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = freezed,
    Object? pageStatus = freezed,
  }) {
    return _then(_$TeacherProfileStateImpl(
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      pageStatus: freezed == pageStatus ? _value.pageStatus! : pageStatus,
    ));
  }
}

/// @nodoc

class _$TeacherProfileStateImpl implements _TeacherProfileState {
  const _$TeacherProfileStateImpl(
      {this.teacher, this.pageStatus = Status.loading});

  @override
  final Teacher? teacher;
  @override
  @JsonKey()
  final dynamic pageStatus;

  @override
  String toString() {
    return 'TeacherProfileState(teacher: $teacher, pageStatus: $pageStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeacherProfileStateImpl &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            const DeepCollectionEquality()
                .equals(other.pageStatus, pageStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, teacher, const DeepCollectionEquality().hash(pageStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeacherProfileStateImplCopyWith<_$TeacherProfileStateImpl> get copyWith =>
      __$$TeacherProfileStateImplCopyWithImpl<_$TeacherProfileStateImpl>(
          this, _$identity);
}

abstract class _TeacherProfileState implements TeacherProfileState {
  const factory _TeacherProfileState(
      {final Teacher? teacher,
      final dynamic pageStatus}) = _$TeacherProfileStateImpl;

  @override
  Teacher? get teacher;
  @override
  dynamic get pageStatus;
  @override
  @JsonKey(ignore: true)
  _$$TeacherProfileStateImplCopyWith<_$TeacherProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
