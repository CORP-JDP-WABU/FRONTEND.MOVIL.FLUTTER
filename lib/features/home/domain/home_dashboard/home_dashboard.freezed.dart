// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeDashboard _$HomeDashboardFromJson(Map<String, dynamic> json) {
  return _HomeDashboard.fromJson(json);
}

/// @nodoc
mixin _$HomeDashboard {
  String? get university => throw _privateConstructorUsedError;
  HomeDashboardKpis? get kpis => throw _privateConstructorUsedError;
  HomeDashboardStudent? get student => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDashboardCopyWith<HomeDashboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDashboardCopyWith<$Res> {
  factory $HomeDashboardCopyWith(
          HomeDashboard value, $Res Function(HomeDashboard) then) =
      _$HomeDashboardCopyWithImpl<$Res, HomeDashboard>;
  @useResult
  $Res call(
      {String? university,
      HomeDashboardKpis? kpis,
      HomeDashboardStudent? student});

  $HomeDashboardKpisCopyWith<$Res>? get kpis;
  $HomeDashboardStudentCopyWith<$Res>? get student;
}

/// @nodoc
class _$HomeDashboardCopyWithImpl<$Res, $Val extends HomeDashboard>
    implements $HomeDashboardCopyWith<$Res> {
  _$HomeDashboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? university = freezed,
    Object? kpis = freezed,
    Object? student = freezed,
  }) {
    return _then(_value.copyWith(
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      kpis: freezed == kpis
          ? _value.kpis
          : kpis // ignore: cast_nullable_to_non_nullable
              as HomeDashboardKpis?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as HomeDashboardStudent?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeDashboardKpisCopyWith<$Res>? get kpis {
    if (_value.kpis == null) {
      return null;
    }

    return $HomeDashboardKpisCopyWith<$Res>(_value.kpis!, (value) {
      return _then(_value.copyWith(kpis: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeDashboardStudentCopyWith<$Res>? get student {
    if (_value.student == null) {
      return null;
    }

    return $HomeDashboardStudentCopyWith<$Res>(_value.student!, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeDashboardImplCopyWith<$Res>
    implements $HomeDashboardCopyWith<$Res> {
  factory _$$HomeDashboardImplCopyWith(
          _$HomeDashboardImpl value, $Res Function(_$HomeDashboardImpl) then) =
      __$$HomeDashboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? university,
      HomeDashboardKpis? kpis,
      HomeDashboardStudent? student});

  @override
  $HomeDashboardKpisCopyWith<$Res>? get kpis;
  @override
  $HomeDashboardStudentCopyWith<$Res>? get student;
}

/// @nodoc
class __$$HomeDashboardImplCopyWithImpl<$Res>
    extends _$HomeDashboardCopyWithImpl<$Res, _$HomeDashboardImpl>
    implements _$$HomeDashboardImplCopyWith<$Res> {
  __$$HomeDashboardImplCopyWithImpl(
      _$HomeDashboardImpl _value, $Res Function(_$HomeDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? university = freezed,
    Object? kpis = freezed,
    Object? student = freezed,
  }) {
    return _then(_$HomeDashboardImpl(
      university: freezed == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String?,
      kpis: freezed == kpis
          ? _value.kpis
          : kpis // ignore: cast_nullable_to_non_nullable
              as HomeDashboardKpis?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as HomeDashboardStudent?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDashboardImpl implements _HomeDashboard {
  const _$HomeDashboardImpl({this.university, this.kpis, this.student});

  factory _$HomeDashboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDashboardImplFromJson(json);

  @override
  final String? university;
  @override
  final HomeDashboardKpis? kpis;
  @override
  final HomeDashboardStudent? student;

  @override
  String toString() {
    return 'HomeDashboard(university: $university, kpis: $kpis, student: $student)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDashboardImpl &&
            (identical(other.university, university) ||
                other.university == university) &&
            (identical(other.kpis, kpis) || other.kpis == kpis) &&
            (identical(other.student, student) || other.student == student));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, university, kpis, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDashboardImplCopyWith<_$HomeDashboardImpl> get copyWith =>
      __$$HomeDashboardImplCopyWithImpl<_$HomeDashboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDashboardImplToJson(
      this,
    );
  }
}

abstract class _HomeDashboard implements HomeDashboard {
  const factory _HomeDashboard(
      {final String? university,
      final HomeDashboardKpis? kpis,
      final HomeDashboardStudent? student}) = _$HomeDashboardImpl;

  factory _HomeDashboard.fromJson(Map<String, dynamic> json) =
      _$HomeDashboardImpl.fromJson;

  @override
  String? get university;
  @override
  HomeDashboardKpis? get kpis;
  @override
  HomeDashboardStudent? get student;
  @override
  @JsonKey(ignore: true)
  _$$HomeDashboardImplCopyWith<_$HomeDashboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
