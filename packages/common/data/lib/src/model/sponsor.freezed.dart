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
  Uri get logoUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Uri? get url => throw _privateConstructorUsedError;
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
      Uri logoUrl,
      String description,
      Uri? url,
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
    Object? logoUrl = null,
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
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
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
      Uri logoUrl,
      String description,
      Uri? url,
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
    Object? logoUrl = null,
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
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SponsorType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated('Sponsor is deprecated. Use SponsorV2 instead.')
class _$SponsorImpl implements _Sponsor {
  const _$SponsorImpl(
      {required this.id,
      required this.name,
      required this.logoUrl,
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
  final Uri logoUrl;
  @override
  final String description;
  @override
  final Uri? url;
  @override
  final SponsorType type;

  @override
  String toString() {
    return 'Sponsor(id: $id, name: $name, logoUrl: $logoUrl, description: $description, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, logoUrl, description, url, type);

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
      required final Uri logoUrl,
      required final String description,
      required final Uri? url,
      required final SponsorType type}) = _$SponsorImpl;

  factory _Sponsor.fromJson(Map<String, dynamic> json) = _$SponsorImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Uri get logoUrl;
  @override
  String get description;
  @override
  Uri? get url;
  @override
  SponsorType get type;

  /// Create a copy of Sponsor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorImplCopyWith<_$SponsorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SponsorV2 _$SponsorV2FromJson(Map<String, dynamic> json) {
  return _SponsorV2.fromJson(json);
}

/// @nodoc
mixin _$SponsorV2 {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri get logoUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Uri? get url => throw _privateConstructorUsedError;
  SponsorTypeV2 get type => throw _privateConstructorUsedError;

  /// Serializes this SponsorV2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorV2CopyWith<SponsorV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorV2CopyWith<$Res> {
  factory $SponsorV2CopyWith(SponsorV2 value, $Res Function(SponsorV2) then) =
      _$SponsorV2CopyWithImpl<$Res, SponsorV2>;
  @useResult
  $Res call(
      {int id,
      String name,
      Uri logoUrl,
      String description,
      Uri? url,
      SponsorTypeV2 type});
}

/// @nodoc
class _$SponsorV2CopyWithImpl<$Res, $Val extends SponsorV2>
    implements $SponsorV2CopyWith<$Res> {
  _$SponsorV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = null,
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
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SponsorTypeV2,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorV2ImplCopyWith<$Res>
    implements $SponsorV2CopyWith<$Res> {
  factory _$$SponsorV2ImplCopyWith(
          _$SponsorV2Impl value, $Res Function(_$SponsorV2Impl) then) =
      __$$SponsorV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      Uri logoUrl,
      String description,
      Uri? url,
      SponsorTypeV2 type});
}

/// @nodoc
class __$$SponsorV2ImplCopyWithImpl<$Res>
    extends _$SponsorV2CopyWithImpl<$Res, _$SponsorV2Impl>
    implements _$$SponsorV2ImplCopyWith<$Res> {
  __$$SponsorV2ImplCopyWithImpl(
      _$SponsorV2Impl _value, $Res Function(_$SponsorV2Impl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = null,
    Object? description = null,
    Object? url = freezed,
    Object? type = null,
  }) {
    return _then(_$SponsorV2Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SponsorTypeV2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorV2Impl implements _SponsorV2 {
  const _$SponsorV2Impl(
      {required this.id,
      required this.name,
      required this.logoUrl,
      required this.description,
      required this.url,
      required this.type});

  factory _$SponsorV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorV2ImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Uri logoUrl;
  @override
  final String description;
  @override
  final Uri? url;
  @override
  final SponsorTypeV2 type;

  @override
  String toString() {
    return 'SponsorV2(id: $id, name: $name, logoUrl: $logoUrl, description: $description, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorV2Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, logoUrl, description, url, type);

  /// Create a copy of SponsorV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorV2ImplCopyWith<_$SponsorV2Impl> get copyWith =>
      __$$SponsorV2ImplCopyWithImpl<_$SponsorV2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorV2ImplToJson(
      this,
    );
  }
}

abstract class _SponsorV2 implements SponsorV2 {
  const factory _SponsorV2(
      {required final int id,
      required final String name,
      required final Uri logoUrl,
      required final String description,
      required final Uri? url,
      required final SponsorTypeV2 type}) = _$SponsorV2Impl;

  factory _SponsorV2.fromJson(Map<String, dynamic> json) =
      _$SponsorV2Impl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Uri get logoUrl;
  @override
  String get description;
  @override
  Uri? get url;
  @override
  SponsorTypeV2 get type;

  /// Create a copy of SponsorV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorV2ImplCopyWith<_$SponsorV2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
