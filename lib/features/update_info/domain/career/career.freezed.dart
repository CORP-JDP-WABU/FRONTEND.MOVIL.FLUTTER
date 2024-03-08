// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Career _$CareerFromJson(Map<String, dynamic> json) {
  return _Career.fromJson(json);
}

/// @nodoc
mixin _$Career {
  String? get idCareer => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get cicles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CareerCopyWith<Career> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerCopyWith<$Res> {
  factory $CareerCopyWith(Career value, $Res Function(Career) then) =
      _$CareerCopyWithImpl<$Res, Career>;
  @useResult
  $Res call({String? idCareer, String name, List<String> cicles});
}

/// @nodoc
class _$CareerCopyWithImpl<$Res, $Val extends Career>
    implements $CareerCopyWith<$Res> {
  _$CareerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCareer = freezed,
    Object? name = null,
    Object? cicles = null,
  }) {
    return _then(_value.copyWith(
      idCareer: freezed == idCareer
          ? _value.idCareer
          : idCareer // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cicles: null == cicles
          ? _value.cicles
          : cicles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CareerImplCopyWith<$Res> implements $CareerCopyWith<$Res> {
  factory _$$CareerImplCopyWith(
          _$CareerImpl value, $Res Function(_$CareerImpl) then) =
      __$$CareerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? idCareer, String name, List<String> cicles});
}

/// @nodoc
class __$$CareerImplCopyWithImpl<$Res>
    extends _$CareerCopyWithImpl<$Res, _$CareerImpl>
    implements _$$CareerImplCopyWith<$Res> {
  __$$CareerImplCopyWithImpl(
      _$CareerImpl _value, $Res Function(_$CareerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCareer = freezed,
    Object? name = null,
    Object? cicles = null,
  }) {
    return _then(_$CareerImpl(
      idCareer: freezed == idCareer
          ? _value.idCareer
          : idCareer // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cicles: null == cicles
          ? _value._cicles
          : cicles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CareerImpl implements _Career {
  const _$CareerImpl(
      {this.idCareer, this.name = '', final List<String> cicles = const []})
      : _cicles = cicles;

  factory _$CareerImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareerImplFromJson(json);

  @override
  final String? idCareer;
  @override
  @JsonKey()
  final String name;
  final List<String> _cicles;
  @override
  @JsonKey()
  List<String> get cicles {
    if (_cicles is EqualUnmodifiableListView) return _cicles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cicles);
  }

  @override
  String toString() {
    return 'Career(idCareer: $idCareer, name: $name, cicles: $cicles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerImpl &&
            (identical(other.idCareer, idCareer) ||
                other.idCareer == idCareer) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._cicles, _cicles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idCareer, name,
      const DeepCollectionEquality().hash(_cicles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerImplCopyWith<_$CareerImpl> get copyWith =>
      __$$CareerImplCopyWithImpl<_$CareerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareerImplToJson(
      this,
    );
  }
}

abstract class _Career implements Career {
  const factory _Career(
      {final String? idCareer,
      final String name,
      final List<String> cicles}) = _$CareerImpl;

  factory _Career.fromJson(Map<String, dynamic> json) = _$CareerImpl.fromJson;

  @override
  String? get idCareer;
  @override
  String get name;
  @override
  List<String> get cicles;
  @override
  @JsonKey(ignore: true)
  _$$CareerImplCopyWith<_$CareerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
