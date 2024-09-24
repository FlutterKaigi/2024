// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_venues_with_sessions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionVenuesWithSessions _$SessionVenuesWithSessionsFromJson(
    Map<String, dynamic> json) {
  return _SessionVenuesWithSessions.fromJson(json);
}

/// @nodoc
mixin _$SessionVenuesWithSessions {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SessionVenuesWithSessions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionVenuesWithSessions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionVenuesWithSessionsCopyWith<SessionVenuesWithSessions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionVenuesWithSessionsCopyWith<$Res> {
  factory $SessionVenuesWithSessionsCopyWith(SessionVenuesWithSessions value,
          $Res Function(SessionVenuesWithSessions) then) =
      _$SessionVenuesWithSessionsCopyWithImpl<$Res, SessionVenuesWithSessions>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$SessionVenuesWithSessionsCopyWithImpl<$Res,
        $Val extends SessionVenuesWithSessions>
    implements $SessionVenuesWithSessionsCopyWith<$Res> {
  _$SessionVenuesWithSessionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionVenuesWithSessions
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
abstract class _$$SessionVenuesWithSessionsImplCopyWith<$Res>
    implements $SessionVenuesWithSessionsCopyWith<$Res> {
  factory _$$SessionVenuesWithSessionsImplCopyWith(
          _$SessionVenuesWithSessionsImpl value,
          $Res Function(_$SessionVenuesWithSessionsImpl) then) =
      __$$SessionVenuesWithSessionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$SessionVenuesWithSessionsImplCopyWithImpl<$Res>
    extends _$SessionVenuesWithSessionsCopyWithImpl<$Res,
        _$SessionVenuesWithSessionsImpl>
    implements _$$SessionVenuesWithSessionsImplCopyWith<$Res> {
  __$$SessionVenuesWithSessionsImplCopyWithImpl(
      _$SessionVenuesWithSessionsImpl _value,
      $Res Function(_$SessionVenuesWithSessionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionVenuesWithSessions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SessionVenuesWithSessionsImpl(
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
class _$SessionVenuesWithSessionsImpl implements _SessionVenuesWithSessions {
  const _$SessionVenuesWithSessionsImpl({required this.id, required this.name});

  factory _$SessionVenuesWithSessionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionVenuesWithSessionsImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'SessionVenuesWithSessions(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionVenuesWithSessionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of SessionVenuesWithSessions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionVenuesWithSessionsImplCopyWith<_$SessionVenuesWithSessionsImpl>
      get copyWith => __$$SessionVenuesWithSessionsImplCopyWithImpl<
          _$SessionVenuesWithSessionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionVenuesWithSessionsImplToJson(
      this,
    );
  }
}

abstract class _SessionVenuesWithSessions implements SessionVenuesWithSessions {
  const factory _SessionVenuesWithSessions(
      {required final String id,
      required final String name}) = _$SessionVenuesWithSessionsImpl;

  factory _SessionVenuesWithSessions.fromJson(Map<String, dynamic> json) =
      _$SessionVenuesWithSessionsImpl.fromJson;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of SessionVenuesWithSessions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionVenuesWithSessionsImplCopyWith<_$SessionVenuesWithSessionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionWithSpeakerAndSponsor _$SessionWithSpeakerAndSponsorFromJson(
    Map<String, dynamic> json) {
  return _SessionWithSpeakerAndSponsor.fromJson(json);
}

/// @nodoc
mixin _$SessionWithSpeakerAndSponsor {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<ProfileWithSns> get speakers => throw _privateConstructorUsedError;
  List<Sponsor> get sponsors => throw _privateConstructorUsedError;

  /// Serializes this SessionWithSpeakerAndSponsor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionWithSpeakerAndSponsor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionWithSpeakerAndSponsorCopyWith<SessionWithSpeakerAndSponsor>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionWithSpeakerAndSponsorCopyWith<$Res> {
  factory $SessionWithSpeakerAndSponsorCopyWith(
          SessionWithSpeakerAndSponsor value,
          $Res Function(SessionWithSpeakerAndSponsor) then) =
      _$SessionWithSpeakerAndSponsorCopyWithImpl<$Res,
          SessionWithSpeakerAndSponsor>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<ProfileWithSns> speakers,
      List<Sponsor> sponsors});
}

/// @nodoc
class _$SessionWithSpeakerAndSponsorCopyWithImpl<$Res,
        $Val extends SessionWithSpeakerAndSponsor>
    implements $SessionWithSpeakerAndSponsorCopyWith<$Res> {
  _$SessionWithSpeakerAndSponsorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionWithSpeakerAndSponsor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? isLightningTalk = null,
    Object? speakers = null,
    Object? sponsors = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLightningTalk: null == isLightningTalk
          ? _value.isLightningTalk
          : isLightningTalk // ignore: cast_nullable_to_non_nullable
              as bool,
      speakers: null == speakers
          ? _value.speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<ProfileWithSns>,
      sponsors: null == sponsors
          ? _value.sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionWithSpeakerAndSponsorImplCopyWith<$Res>
    implements $SessionWithSpeakerAndSponsorCopyWith<$Res> {
  factory _$$SessionWithSpeakerAndSponsorImplCopyWith(
          _$SessionWithSpeakerAndSponsorImpl value,
          $Res Function(_$SessionWithSpeakerAndSponsorImpl) then) =
      __$$SessionWithSpeakerAndSponsorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<ProfileWithSns> speakers,
      List<Sponsor> sponsors});
}

/// @nodoc
class __$$SessionWithSpeakerAndSponsorImplCopyWithImpl<$Res>
    extends _$SessionWithSpeakerAndSponsorCopyWithImpl<$Res,
        _$SessionWithSpeakerAndSponsorImpl>
    implements _$$SessionWithSpeakerAndSponsorImplCopyWith<$Res> {
  __$$SessionWithSpeakerAndSponsorImplCopyWithImpl(
      _$SessionWithSpeakerAndSponsorImpl _value,
      $Res Function(_$SessionWithSpeakerAndSponsorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionWithSpeakerAndSponsor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? isLightningTalk = null,
    Object? speakers = null,
    Object? sponsors = null,
  }) {
    return _then(_$SessionWithSpeakerAndSponsorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLightningTalk: null == isLightningTalk
          ? _value.isLightningTalk
          : isLightningTalk // ignore: cast_nullable_to_non_nullable
              as bool,
      speakers: null == speakers
          ? _value._speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<ProfileWithSns>,
      sponsors: null == sponsors
          ? _value._sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionWithSpeakerAndSponsorImpl
    implements _SessionWithSpeakerAndSponsor {
  const _$SessionWithSpeakerAndSponsorImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<ProfileWithSns> speakers,
      required final List<Sponsor> sponsors})
      : _speakers = speakers,
        _sponsors = sponsors;

  factory _$SessionWithSpeakerAndSponsorImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionWithSpeakerAndSponsorImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime startsAt;
  @override
  final DateTime endsAt;
  @override
  final bool isLightningTalk;
  final List<ProfileWithSns> _speakers;
  @override
  List<ProfileWithSns> get speakers {
    if (_speakers is EqualUnmodifiableListView) return _speakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakers);
  }

  final List<Sponsor> _sponsors;
  @override
  List<Sponsor> get sponsors {
    if (_sponsors is EqualUnmodifiableListView) return _sponsors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sponsors);
  }

  @override
  String toString() {
    return 'SessionWithSpeakerAndSponsor(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, sponsors: $sponsors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionWithSpeakerAndSponsorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.isLightningTalk, isLightningTalk) ||
                other.isLightningTalk == isLightningTalk) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers) &&
            const DeepCollectionEquality().equals(other._sponsors, _sponsors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      startsAt,
      endsAt,
      isLightningTalk,
      const DeepCollectionEquality().hash(_speakers),
      const DeepCollectionEquality().hash(_sponsors));

  /// Create a copy of SessionWithSpeakerAndSponsor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionWithSpeakerAndSponsorImplCopyWith<
          _$SessionWithSpeakerAndSponsorImpl>
      get copyWith => __$$SessionWithSpeakerAndSponsorImplCopyWithImpl<
          _$SessionWithSpeakerAndSponsorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionWithSpeakerAndSponsorImplToJson(
      this,
    );
  }
}

abstract class _SessionWithSpeakerAndSponsor
    implements SessionWithSpeakerAndSponsor {
  const factory _SessionWithSpeakerAndSponsor(
          {required final String id,
          required final String title,
          required final String description,
          required final DateTime startsAt,
          required final DateTime endsAt,
          required final bool isLightningTalk,
          required final List<ProfileWithSns> speakers,
          required final List<Sponsor> sponsors}) =
      _$SessionWithSpeakerAndSponsorImpl;

  factory _SessionWithSpeakerAndSponsor.fromJson(Map<String, dynamic> json) =
      _$SessionWithSpeakerAndSponsorImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get startsAt;
  @override
  DateTime get endsAt;
  @override
  bool get isLightningTalk;
  @override
  List<ProfileWithSns> get speakers;
  @override
  List<Sponsor> get sponsors;

  /// Create a copy of SessionWithSpeakerAndSponsor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionWithSpeakerAndSponsorImplCopyWith<
          _$SessionWithSpeakerAndSponsorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
