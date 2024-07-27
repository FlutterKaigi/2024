// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sponsor _$SponsorFromJson(Map<String, dynamic> json) {
  return _Sponsor.fromJson(json);
}

/// @nodoc
mixin _$Sponsor {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logoName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  SponsorType get type => throw _privateConstructorUsedError;

  /// Serializes this Sponsor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sponsor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorCopyWith<Sponsor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorCopyWith<$Res> {
  factory $SponsorCopyWith(Sponsor value, $Res Function(Sponsor) then) =
      _$SponsorCopyWithImpl<$Res, Sponsor>;
  @useResult
  $Res call(
      {int id,
      String name,
      String logoName,
      String description,
      String? url,
      SponsorType type});
}

/// @nodoc
class _$SponsorCopyWithImpl<$Res, $Val extends Sponsor>
    implements $SponsorCopyWith<$Res> {
  _$SponsorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sponsor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoName = null,
    Object? description = null,
    Object? url = freezed,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoName: null == logoName
          ? _value.logoName
          : logoName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SponsorType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorImplCopyWith<$Res> implements $SponsorCopyWith<$Res> {
  factory _$$SponsorImplCopyWith(
          _$SponsorImpl value, $Res Function(_$SponsorImpl) then) =
      __$$SponsorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String logoName,
      String description,
      String? url,
      SponsorType type});
}

/// @nodoc
class __$$SponsorImplCopyWithImpl<$Res>
    extends _$SponsorCopyWithImpl<$Res, _$SponsorImpl>
    implements _$$SponsorImplCopyWith<$Res> {
  __$$SponsorImplCopyWithImpl(
      _$SponsorImpl _value, $Res Function(_$SponsorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sponsor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoName = null,
    Object? description = null,
    Object? url = freezed,
    Object? type = null,
  }) {
    return _then(_$SponsorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoName: null == logoName
          ? _value.logoName
          : logoName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SponsorType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorImpl implements _Sponsor {
  const _$SponsorImpl(
      {required this.id,
      required this.name,
      required this.logoName,
      required this.description,
      required this.url,
      required this.type});

  factory _$SponsorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String logoName;
  @override
  final String description;
  @override
  final String? url;
  @override
  final SponsorType type;

  @override
  String toString() {
    return 'Sponsor(id: $id, name: $name, logoName: $logoName, description: $description, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoName, logoName) ||
                other.logoName == logoName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, logoName, description, url, type);

  /// Create a copy of Sponsor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorImplCopyWith<_$SponsorImpl> get copyWith =>
      __$$SponsorImplCopyWithImpl<_$SponsorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorImplToJson(
      this,
    );
  }
}

abstract class _Sponsor implements Sponsor {
  const factory _Sponsor(
      {required final int id,
      required final String name,
      required final String logoName,
      required final String description,
      required final String? url,
      required final SponsorType type}) = _$SponsorImpl;

  factory _Sponsor.fromJson(Map<String, dynamic> json) = _$SponsorImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get logoName;
  @override
  String get description;
  @override
  String? get url;
  @override
  SponsorType get type;

  /// Create a copy of Sponsor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorImplCopyWith<_$SponsorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
