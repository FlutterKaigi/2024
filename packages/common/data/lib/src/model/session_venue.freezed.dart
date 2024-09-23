// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_venue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionVenue _$SessionVenueFromJson(Map<String, dynamic> json) {
  return _SessionVenue.fromJson(json);
}

/// @nodoc
mixin _$SessionVenue {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SessionVenue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionVenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionVenueCopyWith<SessionVenue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionVenueCopyWith<$Res> {
  factory $SessionVenueCopyWith(
          SessionVenue value, $Res Function(SessionVenue) then) =
      _$SessionVenueCopyWithImpl<$Res, SessionVenue>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$SessionVenueCopyWithImpl<$Res, $Val extends SessionVenue>
    implements $SessionVenueCopyWith<$Res> {
  _$SessionVenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionVenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionVenueImplCopyWith<$Res>
    implements $SessionVenueCopyWith<$Res> {
  factory _$$SessionVenueImplCopyWith(
          _$SessionVenueImpl value, $Res Function(_$SessionVenueImpl) then) =
      __$$SessionVenueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$SessionVenueImplCopyWithImpl<$Res>
    extends _$SessionVenueCopyWithImpl<$Res, _$SessionVenueImpl>
    implements _$$SessionVenueImplCopyWith<$Res> {
  __$$SessionVenueImplCopyWithImpl(
      _$SessionVenueImpl _value, $Res Function(_$SessionVenueImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionVenue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SessionVenueImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionVenueImpl implements _SessionVenue {
  const _$SessionVenueImpl({required this.id, required this.name});

  factory _$SessionVenueImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionVenueImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'SessionVenue(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionVenueImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SessionVenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionVenueImplCopyWith<_$SessionVenueImpl> get copyWith =>
      __$$SessionVenueImplCopyWithImpl<_$SessionVenueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionVenueImplToJson(
      this,
    );
  }
}

abstract class _SessionVenue implements SessionVenue {
  const factory _SessionVenue(
      {required final String id,
      required final String name}) = _$SessionVenueImpl;

  factory _SessionVenue.fromJson(Map<String, dynamic> json) =
      _$SessionVenueImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of SessionVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionVenueImplCopyWith<_$SessionVenueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
