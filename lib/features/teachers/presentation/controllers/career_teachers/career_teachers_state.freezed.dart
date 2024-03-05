// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career_teachers_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CareerTeachersState {
  List<CareerTeacherCourse>? get careerTeacherCourses =>
      throw _privateConstructorUsedError;
  dynamic get pageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CareerTeachersStateCopyWith<CareerTeachersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerTeachersStateCopyWith<$Res> {
  factory $CareerTeachersStateCopyWith(
          CareerTeachersState value, $Res Function(CareerTeachersState) then) =
      _$CareerTeachersStateCopyWithImpl<$Res, CareerTeachersState>;
  @useResult
  $Res call(
      {List<CareerTeacherCourse>? careerTeacherCourses, dynamic pageStatus});
}

/// @nodoc
class _$CareerTeachersStateCopyWithImpl<$Res, $Val extends CareerTeachersState>
    implements $CareerTeachersStateCopyWith<$Res> {
  _$CareerTeachersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? careerTeacherCourses = freezed,
    Object? pageStatus = freezed,
  }) {
    return _then(_value.copyWith(
      careerTeacherCourses: freezed == careerTeacherCourses
          ? _value.careerTeacherCourses
          : careerTeacherCourses // ignore: cast_nullable_to_non_nullable
              as List<CareerTeacherCourse>?,
      pageStatus: freezed == pageStatus
          ? _value.pageStatus
          : pageStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CareerTeachersStateImplCopyWith<$Res>
    implements $CareerTeachersStateCopyWith<$Res> {
  factory _$$CareerTeachersStateImplCopyWith(_$CareerTeachersStateImpl value,
          $Res Function(_$CareerTeachersStateImpl) then) =
      __$$CareerTeachersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CareerTeacherCourse>? careerTeacherCourses, dynamic pageStatus});
}

/// @nodoc
class __$$CareerTeachersStateImplCopyWithImpl<$Res>
    extends _$CareerTeachersStateCopyWithImpl<$Res, _$CareerTeachersStateImpl>
    implements _$$CareerTeachersStateImplCopyWith<$Res> {
  __$$CareerTeachersStateImplCopyWithImpl(_$CareerTeachersStateImpl _value,
      $Res Function(_$CareerTeachersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? careerTeacherCourses = freezed,
    Object? pageStatus = freezed,
  }) {
    return _then(_$CareerTeachersStateImpl(
      careerTeacherCourses: freezed == careerTeacherCourses
          ? _value._careerTeacherCourses
          : careerTeacherCourses // ignore: cast_nullable_to_non_nullable
              as List<CareerTeacherCourse>?,
      pageStatus: freezed == pageStatus ? _value.pageStatus! : pageStatus,
    ));
  }
}

/// @nodoc

class _$CareerTeachersStateImpl implements _CareerTeachersState {
  const _$CareerTeachersStateImpl(
      {final List<CareerTeacherCourse>? careerTeacherCourses,
      this.pageStatus = CareerTeachersStatus.loading})
      : _careerTeacherCourses = careerTeacherCourses;

  final List<CareerTeacherCourse>? _careerTeacherCourses;
  @override
  List<CareerTeacherCourse>? get careerTeacherCourses {
    final value = _careerTeacherCourses;
    if (value == null) return null;
    if (_careerTeacherCourses is EqualUnmodifiableListView)
      return _careerTeacherCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic pageStatus;

  @override
  String toString() {
    return 'CareerTeachersState(careerTeacherCourses: $careerTeacherCourses, pageStatus: $pageStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerTeachersStateImpl &&
            const DeepCollectionEquality()
                .equals(other._careerTeacherCourses, _careerTeacherCourses) &&
            const DeepCollectionEquality()
                .equals(other.pageStatus, pageStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_careerTeacherCourses),
      const DeepCollectionEquality().hash(pageStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerTeachersStateImplCopyWith<_$CareerTeachersStateImpl> get copyWith =>
      __$$CareerTeachersStateImplCopyWithImpl<_$CareerTeachersStateImpl>(
          this, _$identity);
}

abstract class _CareerTeachersState implements CareerTeachersState {
  const factory _CareerTeachersState(
      {final List<CareerTeacherCourse>? careerTeacherCourses,
      final dynamic pageStatus}) = _$CareerTeachersStateImpl;

  @override
  List<CareerTeacherCourse>? get careerTeacherCourses;
  @override
  dynamic get pageStatus;
  @override
  @JsonKey(ignore: true)
  _$$CareerTeachersStateImplCopyWith<_$CareerTeachersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
