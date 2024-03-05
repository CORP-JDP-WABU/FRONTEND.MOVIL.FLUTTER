// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

University _$UniversityFromJson(Map<String, dynamic> json) {
  return _University.fromJson(json);
}

/// @nodoc
mixin _$University {
  String? get idUniversity => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<Career> get careers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniversityCopyWith<University> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityCopyWith<$Res> {
  factory $UniversityCopyWith(
          University value, $Res Function(University) then) =
      _$UniversityCopyWithImpl<$Res, University>;
  @useResult
  $Res call({String? idUniversity, String name, List<Career> careers});
}

/// @nodoc
class _$UniversityCopyWithImpl<$Res, $Val extends University>
    implements $UniversityCopyWith<$Res> {
  _$UniversityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUniversity = freezed,
    Object? name = null,
    Object? careers = null,
  }) {
    return _then(_value.copyWith(
      idUniversity: freezed == idUniversity
          ? _value.idUniversity
          : idUniversity // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      careers: null == careers
          ? _value.careers
          : careers // ignore: cast_nullable_to_non_nullable
              as List<Career>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UniversityImplCopyWith<$Res>
    implements $UniversityCopyWith<$Res> {
  factory _$$UniversityImplCopyWith(
          _$UniversityImpl value, $Res Function(_$UniversityImpl) then) =
      __$$UniversityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? idUniversity, String name, List<Career> careers});
}

/// @nodoc
class __$$UniversityImplCopyWithImpl<$Res>
    extends _$UniversityCopyWithImpl<$Res, _$UniversityImpl>
    implements _$$UniversityImplCopyWith<$Res> {
  __$$UniversityImplCopyWithImpl(
      _$UniversityImpl _value, $Res Function(_$UniversityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idUniversity = freezed,
    Object? name = null,
    Object? careers = null,
  }) {
    return _then(_$UniversityImpl(
      idUniversity: freezed == idUniversity
          ? _value.idUniversity
          : idUniversity // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      careers: null == careers
          ? _value._careers
          : careers // ignore: cast_nullable_to_non_nullable
              as List<Career>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UniversityImpl implements _University {
  const _$UniversityImpl(
      {this.idUniversity,
      this.name = '',
      final List<Career> careers = const []})
      : _careers = careers;

  factory _$UniversityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UniversityImplFromJson(json);

  @override
  final String? idUniversity;
  @override
  @JsonKey()
  final String name;
  final List<Career> _careers;
  @override
  @JsonKey()
  List<Career> get careers {
    if (_careers is EqualUnmodifiableListView) return _careers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_careers);
  }

  @override
  String toString() {
    return 'University(idUniversity: $idUniversity, name: $name, careers: $careers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UniversityImpl &&
            (identical(other.idUniversity, idUniversity) ||
                other.idUniversity == idUniversity) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._careers, _careers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idUniversity, name,
      const DeepCollectionEquality().hash(_careers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UniversityImplCopyWith<_$UniversityImpl> get copyWith =>
      __$$UniversityImplCopyWithImpl<_$UniversityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UniversityImplToJson(
      this,
    );
  }
}

abstract class _University implements University {
  const factory _University(
      {final String? idUniversity,
      final String name,
      final List<Career> careers}) = _$UniversityImpl;

  factory _University.fromJson(Map<String, dynamic> json) =
      _$UniversityImpl.fromJson;

  @override
  String? get idUniversity;
  @override
  String get name;
  @override
  List<Career> get careers;
  @override
  @JsonKey(ignore: true)
  _$$UniversityImplCopyWith<_$UniversityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
