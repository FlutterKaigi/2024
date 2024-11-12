// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SponsorTable _$SponsorTableFromJson(Map<String, dynamic> json) {
  return _SponsorTable.fromJson(json);
}

/// @nodoc
mixin _$SponsorTable {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logoName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  SponsorType get type => throw _privateConstructorUsedError;

  /// Serializes this SponsorTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorTableCopyWith<SponsorTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorTableCopyWith<$Res> {
  factory $SponsorTableCopyWith(
          SponsorTable value, $Res Function(SponsorTable) then) =
      _$SponsorTableCopyWithImpl<$Res, SponsorTable>;
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
class _$SponsorTableCopyWithImpl<$Res, $Val extends SponsorTable>
    implements $SponsorTableCopyWith<$Res> {
  _$SponsorTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorTable
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
abstract class _$$SponsorTableImplCopyWith<$Res>
    implements $SponsorTableCopyWith<$Res> {
  factory _$$SponsorTableImplCopyWith(
          _$SponsorTableImpl value, $Res Function(_$SponsorTableImpl) then) =
      __$$SponsorTableImplCopyWithImpl<$Res>;
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
class __$$SponsorTableImplCopyWithImpl<$Res>
    extends _$SponsorTableCopyWithImpl<$Res, _$SponsorTableImpl>
    implements _$$SponsorTableImplCopyWith<$Res> {
  __$$SponsorTableImplCopyWithImpl(
      _$SponsorTableImpl _value, $Res Function(_$SponsorTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorTable
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
    return _then(_$SponsorTableImpl(
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
class _$SponsorTableImpl implements _SponsorTable {
  const _$SponsorTableImpl(
      {required this.id,
      required this.name,
      required this.logoName,
      required this.description,
      required this.url,
      required this.type});

  factory _$SponsorTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorTableImplFromJson(json);

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
    return 'SponsorTable(id: $id, name: $name, logoName: $logoName, description: $description, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorTableImpl &&
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

  /// Create a copy of SponsorTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorTableImplCopyWith<_$SponsorTableImpl> get copyWith =>
      __$$SponsorTableImplCopyWithImpl<_$SponsorTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorTableImplToJson(
      this,
    );
  }
}

abstract class _SponsorTable implements SponsorTable {
  const factory _SponsorTable(
      {required final int id,
      required final String name,
      required final String logoName,
      required final String description,
      required final String? url,
      required final SponsorType type}) = _$SponsorTableImpl;

  factory _SponsorTable.fromJson(Map<String, dynamic> json) =
      _$SponsorTableImpl.fromJson;

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

  /// Create a copy of SponsorTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorTableImplCopyWith<_$SponsorTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SponsorV2Table _$SponsorV2TableFromJson(Map<String, dynamic> json) {
  return _SponsorV2Table.fromJson(json);
}

/// @nodoc
mixin _$SponsorV2Table {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logoName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  SponsorTypeV2 get type => throw _privateConstructorUsedError;

  /// Serializes this SponsorV2Table to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorV2Table
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorV2TableCopyWith<SponsorV2Table> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorV2TableCopyWith<$Res> {
  factory $SponsorV2TableCopyWith(
          SponsorV2Table value, $Res Function(SponsorV2Table) then) =
      _$SponsorV2TableCopyWithImpl<$Res, SponsorV2Table>;
  @useResult
  $Res call(
      {int id,
      String name,
      String logoName,
      String description,
      String? url,
      SponsorTypeV2 type});
}

/// @nodoc
class _$SponsorV2TableCopyWithImpl<$Res, $Val extends SponsorV2Table>
    implements $SponsorV2TableCopyWith<$Res> {
  _$SponsorV2TableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorV2Table
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
              as SponsorTypeV2,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorV2TableImplCopyWith<$Res>
    implements $SponsorV2TableCopyWith<$Res> {
  factory _$$SponsorV2TableImplCopyWith(_$SponsorV2TableImpl value,
          $Res Function(_$SponsorV2TableImpl) then) =
      __$$SponsorV2TableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String logoName,
      String description,
      String? url,
      SponsorTypeV2 type});
}

/// @nodoc
class __$$SponsorV2TableImplCopyWithImpl<$Res>
    extends _$SponsorV2TableCopyWithImpl<$Res, _$SponsorV2TableImpl>
    implements _$$SponsorV2TableImplCopyWith<$Res> {
  __$$SponsorV2TableImplCopyWithImpl(
      _$SponsorV2TableImpl _value, $Res Function(_$SponsorV2TableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorV2Table
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
    return _then(_$SponsorV2TableImpl(
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
              as SponsorTypeV2,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorV2TableImpl implements _SponsorV2Table {
  const _$SponsorV2TableImpl(
      {required this.id,
      required this.name,
      required this.logoName,
      required this.description,
      required this.url,
      required this.type});

  factory _$SponsorV2TableImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorV2TableImplFromJson(json);

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
  final SponsorTypeV2 type;

  @override
  String toString() {
    return 'SponsorV2Table(id: $id, name: $name, logoName: $logoName, description: $description, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorV2TableImpl &&
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

  /// Create a copy of SponsorV2Table
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorV2TableImplCopyWith<_$SponsorV2TableImpl> get copyWith =>
      __$$SponsorV2TableImplCopyWithImpl<_$SponsorV2TableImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorV2TableImplToJson(
      this,
    );
  }
}

abstract class _SponsorV2Table implements SponsorV2Table {
  const factory _SponsorV2Table(
      {required final int id,
      required final String name,
      required final String logoName,
      required final String description,
      required final String? url,
      required final SponsorTypeV2 type}) = _$SponsorV2TableImpl;

  factory _SponsorV2Table.fromJson(Map<String, dynamic> json) =
      _$SponsorV2TableImpl.fromJson;

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
  SponsorTypeV2 get type;

  /// Create a copy of SponsorV2Table
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorV2TableImplCopyWith<_$SponsorV2TableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
