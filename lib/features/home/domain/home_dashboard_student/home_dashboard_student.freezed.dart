// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dashboard_student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDashboardStudent _$HomeDashboardStudentFromJson(Map<String, dynamic> json) {
  return _HomeDashboardStudent.fromJson(json);
}

/// @nodoc
mixin _$HomeDashboardStudent {
  String? get idStudent => throw _privateConstructorUsedError;
  int? get points => throw _privateConstructorUsedError;
  List<String>? get favoriteCourses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDashboardStudentCopyWith<HomeDashboardStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDashboardStudentCopyWith<$Res> {
  factory $HomeDashboardStudentCopyWith(HomeDashboardStudent value,
          $Res Function(HomeDashboardStudent) then) =
      _$HomeDashboardStudentCopyWithImpl<$Res, HomeDashboardStudent>;
  @useResult
  $Res call({String? idStudent, int? points, List<String>? favoriteCourses});
}

/// @nodoc
class _$HomeDashboardStudentCopyWithImpl<$Res,
        $Val extends HomeDashboardStudent>
    implements $HomeDashboardStudentCopyWith<$Res> {
  _$HomeDashboardStudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStudent = freezed,
    Object? points = freezed,
    Object? favoriteCourses = freezed,
  }) {
    return _then(_value.copyWith(
      idStudent: freezed == idStudent
          ? _value.idStudent
          : idStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      favoriteCourses: freezed == favoriteCourses
          ? _value.favoriteCourses
          : favoriteCourses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeDashboardStudentImplCopyWith<$Res>
    implements $HomeDashboardStudentCopyWith<$Res> {
  factory _$$HomeDashboardStudentImplCopyWith(_$HomeDashboardStudentImpl value,
          $Res Function(_$HomeDashboardStudentImpl) then) =
      __$$HomeDashboardStudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? idStudent, int? points, List<String>? favoriteCourses});
}

/// @nodoc
class __$$HomeDashboardStudentImplCopyWithImpl<$Res>
    extends _$HomeDashboardStudentCopyWithImpl<$Res, _$HomeDashboardStudentImpl>
    implements _$$HomeDashboardStudentImplCopyWith<$Res> {
  __$$HomeDashboardStudentImplCopyWithImpl(_$HomeDashboardStudentImpl _value,
      $Res Function(_$HomeDashboardStudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idStudent = freezed,
    Object? points = freezed,
    Object? favoriteCourses = freezed,
  }) {
    return _then(_$HomeDashboardStudentImpl(
      idStudent: freezed == idStudent
          ? _value.idStudent
          : idStudent // ignore: cast_nullable_to_non_nullable
              as String?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int?,
      favoriteCourses: freezed == favoriteCourses
          ? _value._favoriteCourses
          : favoriteCourses // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDashboardStudentImpl implements _HomeDashboardStudent {
  const _$HomeDashboardStudentImpl(
      {this.idStudent, this.points, final List<String>? favoriteCourses})
      : _favoriteCourses = favoriteCourses;

  factory _$HomeDashboardStudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDashboardStudentImplFromJson(json);

  @override
  final String? idStudent;
  @override
  final int? points;
  final List<String>? _favoriteCourses;
  @override
  List<String>? get favoriteCourses {
    final value = _favoriteCourses;
    if (value == null) return null;
    if (_favoriteCourses is EqualUnmodifiableListView) return _favoriteCourses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeDashboardStudent(idStudent: $idStudent, points: $points, favoriteCourses: $favoriteCourses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDashboardStudentImpl &&
            (identical(other.idStudent, idStudent) ||
                other.idStudent == idStudent) &&
            (identical(other.points, points) || other.points == points) &&
            const DeepCollectionEquality()
                .equals(other._favoriteCourses, _favoriteCourses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idStudent, points,
      const DeepCollectionEquality().hash(_favoriteCourses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDashboardStudentImplCopyWith<_$HomeDashboardStudentImpl>
      get copyWith =>
          __$$HomeDashboardStudentImplCopyWithImpl<_$HomeDashboardStudentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDashboardStudentImplToJson(
      this,
    );
  }
}

abstract class _HomeDashboardStudent implements HomeDashboardStudent {
  const factory _HomeDashboardStudent(
      {final String? idStudent,
      final int? points,
      final List<String>? favoriteCourses}) = _$HomeDashboardStudentImpl;

  factory _HomeDashboardStudent.fromJson(Map<String, dynamic> json) =
      _$HomeDashboardStudentImpl.fromJson;

  @override
  String? get idStudent;
  @override
  int? get points;
  @override
  List<String>? get favoriteCourses;
  @override
  @JsonKey(ignore: true)
  _$$HomeDashboardStudentImplCopyWith<_$HomeDashboardStudentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
