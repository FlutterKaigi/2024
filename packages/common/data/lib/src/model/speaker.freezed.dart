// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'speaker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Speaker _$SpeakerFromJson(Map<String, dynamic> json) {
  return _Speaker.fromJson(json);
}

/// @nodoc
mixin _$Speaker {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri? get avatarUri => throw _privateConstructorUsedError;
  Uri? get xUri => throw _privateConstructorUsedError;

  /// Serializes this Speaker to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Speaker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeakerCopyWith<Speaker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerCopyWith<$Res> {
  factory $SpeakerCopyWith(Speaker value, $Res Function(Speaker) then) =
      _$SpeakerCopyWithImpl<$Res, Speaker>;
  @useResult
  $Res call({String id, String name, Uri? avatarUri, Uri? xUri});
}

/// @nodoc
class _$SpeakerCopyWithImpl<$Res, $Val extends Speaker>
    implements $SpeakerCopyWith<$Res> {
  _$SpeakerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Speaker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUri = freezed,
    Object? xUri = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUri: freezed == avatarUri
          ? _value.avatarUri
          : avatarUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      xUri: freezed == xUri
          ? _value.xUri
          : xUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeakerImplCopyWith<$Res> implements $SpeakerCopyWith<$Res> {
  factory _$$SpeakerImplCopyWith(
          _$SpeakerImpl value, $Res Function(_$SpeakerImpl) then) =
      __$$SpeakerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, Uri? avatarUri, Uri? xUri});
}

/// @nodoc
class __$$SpeakerImplCopyWithImpl<$Res>
    extends _$SpeakerCopyWithImpl<$Res, _$SpeakerImpl>
    implements _$$SpeakerImplCopyWith<$Res> {
  __$$SpeakerImplCopyWithImpl(
      _$SpeakerImpl _value, $Res Function(_$SpeakerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Speaker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUri = freezed,
    Object? xUri = freezed,
  }) {
    return _then(_$SpeakerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUri: freezed == avatarUri
          ? _value.avatarUri
          : avatarUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      xUri: freezed == xUri
          ? _value.xUri
          : xUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeakerImpl implements _Speaker {
  const _$SpeakerImpl(
      {required this.id,
      required this.name,
      required this.avatarUri,
      required this.xUri});

  factory _$SpeakerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeakerImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Uri? avatarUri;
  @override
  final Uri? xUri;

  @override
  String toString() {
    return 'Speaker(id: $id, name: $name, avatarUri: $avatarUri, xUri: $xUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUri, avatarUri) ||
                other.avatarUri == avatarUri) &&
            (identical(other.xUri, xUri) || other.xUri == xUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUri, xUri);

  /// Create a copy of Speaker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeakerImplCopyWith<_$SpeakerImpl> get copyWith =>
      __$$SpeakerImplCopyWithImpl<_$SpeakerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeakerImplToJson(
      this,
    );
  }
}

abstract class _Speaker implements Speaker {
  const factory _Speaker(
      {required final String id,
      required final String name,
      required final Uri? avatarUri,
      required final Uri? xUri}) = _$SpeakerImpl;

  factory _Speaker.fromJson(Map<String, dynamic> json) = _$SpeakerImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Uri? get avatarUri;
  @override
  Uri? get xUri;

  /// Create a copy of Speaker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeakerImplCopyWith<_$SpeakerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpeakerTable _$SpeakerTableFromJson(Map<String, dynamic> json) {
  return _SpeakerTable.fromJson(json);
}

/// @nodoc
mixin _$SpeakerTable {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatarName => throw _privateConstructorUsedError;
  String? get xId => throw _privateConstructorUsedError;

  /// Serializes this SpeakerTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpeakerTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpeakerTableCopyWith<SpeakerTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerTableCopyWith<$Res> {
  factory $SpeakerTableCopyWith(
          SpeakerTable value, $Res Function(SpeakerTable) then) =
      _$SpeakerTableCopyWithImpl<$Res, SpeakerTable>;
  @useResult
  $Res call({String id, String name, String avatarName, String? xId});
}

/// @nodoc
class _$SpeakerTableCopyWithImpl<$Res, $Val extends SpeakerTable>
    implements $SpeakerTableCopyWith<$Res> {
  _$SpeakerTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpeakerTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarName = null,
    Object? xId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String,
      xId: freezed == xId
          ? _value.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeakerTableImplCopyWith<$Res>
    implements $SpeakerTableCopyWith<$Res> {
  factory _$$SpeakerTableImplCopyWith(
          _$SpeakerTableImpl value, $Res Function(_$SpeakerTableImpl) then) =
      __$$SpeakerTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String avatarName, String? xId});
}

/// @nodoc
class __$$SpeakerTableImplCopyWithImpl<$Res>
    extends _$SpeakerTableCopyWithImpl<$Res, _$SpeakerTableImpl>
    implements _$$SpeakerTableImplCopyWith<$Res> {
  __$$SpeakerTableImplCopyWithImpl(
      _$SpeakerTableImpl _value, $Res Function(_$SpeakerTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpeakerTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarName = null,
    Object? xId = freezed,
  }) {
    return _then(_$SpeakerTableImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String,
      xId: freezed == xId
          ? _value.xId
          : xId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeakerTableImpl implements _SpeakerTable {
  const _$SpeakerTableImpl(
      {required this.id,
      required this.name,
      required this.avatarName,
      required this.xId});

  factory _$SpeakerTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeakerTableImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String avatarName;
  @override
  final String? xId;

  @override
  String toString() {
    return 'SpeakerTable(id: $id, name: $name, avatarName: $avatarName, xId: $xId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakerTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarName, avatarName) ||
                other.avatarName == avatarName) &&
            (identical(other.xId, xId) || other.xId == xId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarName, xId);

  /// Create a copy of SpeakerTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeakerTableImplCopyWith<_$SpeakerTableImpl> get copyWith =>
      __$$SpeakerTableImplCopyWithImpl<_$SpeakerTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeakerTableImplToJson(
      this,
    );
  }
}

abstract class _SpeakerTable implements SpeakerTable {
  const factory _SpeakerTable(
      {required final String id,
      required final String name,
      required final String avatarName,
      required final String? xId}) = _$SpeakerTableImpl;

  factory _SpeakerTable.fromJson(Map<String, dynamic> json) =
      _$SpeakerTableImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get avatarName;
  @override
  String? get xId;

  /// Create a copy of SpeakerTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpeakerTableImplCopyWith<_$SpeakerTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
