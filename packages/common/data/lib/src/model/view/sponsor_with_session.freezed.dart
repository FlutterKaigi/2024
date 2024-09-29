// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sponsor_with_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SponsorWithSessionView _$SponsorWithSessionViewFromJson(
    Map<String, dynamic> json) {
  return _SponsorWithSessionView.fromJson(json);
}

/// @nodoc
mixin _$SponsorWithSessionView {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logoName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Uri? get url => throw _privateConstructorUsedError;
  SponsorType get type => throw _privateConstructorUsedError;

  /// Serializes this SponsorWithSessionView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorWithSessionView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorWithSessionViewCopyWith<SponsorWithSessionView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorWithSessionViewCopyWith<$Res> {
  factory $SponsorWithSessionViewCopyWith(SponsorWithSessionView value,
          $Res Function(SponsorWithSessionView) then) =
      _$SponsorWithSessionViewCopyWithImpl<$Res, SponsorWithSessionView>;
  @useResult
  $Res call(
      {int id,
      String name,
      String logoName,
      String description,
      Uri? url,
      SponsorType type});
}

/// @nodoc
class _$SponsorWithSessionViewCopyWithImpl<$Res,
        $Val extends SponsorWithSessionView>
    implements $SponsorWithSessionViewCopyWith<$Res> {
  _$SponsorWithSessionViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorWithSessionView
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
              as Uri?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SponsorType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorWithSessionViewImplCopyWith<$Res>
    implements $SponsorWithSessionViewCopyWith<$Res> {
  factory _$$SponsorWithSessionViewImplCopyWith(
          _$SponsorWithSessionViewImpl value,
          $Res Function(_$SponsorWithSessionViewImpl) then) =
      __$$SponsorWithSessionViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String logoName,
      String description,
      Uri? url,
      SponsorType type});
}

/// @nodoc
class __$$SponsorWithSessionViewImplCopyWithImpl<$Res>
    extends _$SponsorWithSessionViewCopyWithImpl<$Res,
        _$SponsorWithSessionViewImpl>
    implements _$$SponsorWithSessionViewImplCopyWith<$Res> {
  __$$SponsorWithSessionViewImplCopyWithImpl(
      _$SponsorWithSessionViewImpl _value,
      $Res Function(_$SponsorWithSessionViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorWithSessionView
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
    return _then(_$SponsorWithSessionViewImpl(
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
class _$SponsorWithSessionViewImpl implements _SponsorWithSessionView {
  const _$SponsorWithSessionViewImpl(
      {required this.id,
      required this.name,
      required this.logoName,
      required this.description,
      required this.url,
      required this.type});

  factory _$SponsorWithSessionViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorWithSessionViewImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String logoName;
  @override
  final String description;
  @override
  final Uri? url;
  @override
  final SponsorType type;

  @override
  String toString() {
    return 'SponsorWithSessionView(id: $id, name: $name, logoName: $logoName, description: $description, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorWithSessionViewImpl &&
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

  /// Create a copy of SponsorWithSessionView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorWithSessionViewImplCopyWith<_$SponsorWithSessionViewImpl>
      get copyWith => __$$SponsorWithSessionViewImplCopyWithImpl<
          _$SponsorWithSessionViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorWithSessionViewImplToJson(
      this,
    );
  }
}

abstract class _SponsorWithSessionView implements SponsorWithSessionView {
  const factory _SponsorWithSessionView(
      {required final int id,
      required final String name,
      required final String logoName,
      required final String description,
      required final Uri? url,
      required final SponsorType type}) = _$SponsorWithSessionViewImpl;

  factory _SponsorWithSessionView.fromJson(Map<String, dynamic> json) =
      _$SponsorWithSessionViewImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get logoName;
  @override
  String get description;
  @override
  Uri? get url;
  @override
  SponsorType get type;

  /// Create a copy of SponsorWithSessionView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorWithSessionViewImplCopyWith<_$SponsorWithSessionViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SponsorWithSession _$SponsorWithSessionFromJson(Map<String, dynamic> json) {
  return _SponsorWithSession.fromJson(json);
}

/// @nodoc
mixin _$SponsorWithSession {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri? get logoUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Uri? get url => throw _privateConstructorUsedError;
  SponsorType get type => throw _privateConstructorUsedError;

  /// Serializes this SponsorWithSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorWithSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorWithSessionCopyWith<SponsorWithSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorWithSessionCopyWith<$Res> {
  factory $SponsorWithSessionCopyWith(
          SponsorWithSession value, $Res Function(SponsorWithSession) then) =
      _$SponsorWithSessionCopyWithImpl<$Res, SponsorWithSession>;
  @useResult
  $Res call(
      {int id,
      String name,
      Uri? logoUrl,
      String description,
      Uri? url,
      SponsorType type});
}

/// @nodoc
class _$SponsorWithSessionCopyWithImpl<$Res, $Val extends SponsorWithSession>
    implements $SponsorWithSessionCopyWith<$Res> {
  _$SponsorWithSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorWithSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = freezed,
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
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
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
abstract class _$$SponsorWithSessionImplCopyWith<$Res>
    implements $SponsorWithSessionCopyWith<$Res> {
  factory _$$SponsorWithSessionImplCopyWith(_$SponsorWithSessionImpl value,
          $Res Function(_$SponsorWithSessionImpl) then) =
      __$$SponsorWithSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      Uri? logoUrl,
      String description,
      Uri? url,
      SponsorType type});
}

/// @nodoc
class __$$SponsorWithSessionImplCopyWithImpl<$Res>
    extends _$SponsorWithSessionCopyWithImpl<$Res, _$SponsorWithSessionImpl>
    implements _$$SponsorWithSessionImplCopyWith<$Res> {
  __$$SponsorWithSessionImplCopyWithImpl(_$SponsorWithSessionImpl _value,
      $Res Function(_$SponsorWithSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorWithSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logoUrl = freezed,
    Object? description = null,
    Object? url = freezed,
    Object? type = null,
  }) {
    return _then(_$SponsorWithSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
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
class _$SponsorWithSessionImpl implements _SponsorWithSession {
  const _$SponsorWithSessionImpl(
      {required this.id,
      required this.name,
      required this.logoUrl,
      required this.description,
      required this.url,
      required this.type});

  factory _$SponsorWithSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorWithSessionImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Uri? logoUrl;
  @override
  final String description;
  @override
  final Uri? url;
  @override
  final SponsorType type;

  @override
  String toString() {
    return 'SponsorWithSession(id: $id, name: $name, logoUrl: $logoUrl, description: $description, url: $url, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorWithSessionImpl &&
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

  /// Create a copy of SponsorWithSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorWithSessionImplCopyWith<_$SponsorWithSessionImpl> get copyWith =>
      __$$SponsorWithSessionImplCopyWithImpl<_$SponsorWithSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorWithSessionImplToJson(
      this,
    );
  }
}

abstract class _SponsorWithSession implements SponsorWithSession {
  const factory _SponsorWithSession(
      {required final int id,
      required final String name,
      required final Uri? logoUrl,
      required final String description,
      required final Uri? url,
      required final SponsorType type}) = _$SponsorWithSessionImpl;

  factory _SponsorWithSession.fromJson(Map<String, dynamic> json) =
      _$SponsorWithSessionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Uri? get logoUrl;
  @override
  String get description;
  @override
  Uri? get url;
  @override
  SponsorType get type;

  /// Create a copy of SponsorWithSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorWithSessionImplCopyWith<_$SponsorWithSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionWithSpeakerAndVenue _$SessionWithSpeakerAndVenueFromJson(
    Map<String, dynamic> json) {
  return _SessionWithSpeakerAndVenue.fromJson(json);
}

/// @nodoc
mixin _$SessionWithSpeakerAndVenue {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<ProfileWithSns> get speakers => throw _privateConstructorUsedError;
  SessionVenue get venue => throw _privateConstructorUsedError;

  /// Serializes this SessionWithSpeakerAndVenue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionWithSpeakerAndVenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionWithSpeakerAndVenueCopyWith<SessionWithSpeakerAndVenue>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionWithSpeakerAndVenueCopyWith<$Res> {
  factory $SessionWithSpeakerAndVenueCopyWith(SessionWithSpeakerAndVenue value,
          $Res Function(SessionWithSpeakerAndVenue) then) =
      _$SessionWithSpeakerAndVenueCopyWithImpl<$Res,
          SessionWithSpeakerAndVenue>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<ProfileWithSns> speakers,
      SessionVenue venue});

  $SessionVenueCopyWith<$Res> get venue;
}

/// @nodoc
class _$SessionWithSpeakerAndVenueCopyWithImpl<$Res,
        $Val extends SessionWithSpeakerAndVenue>
    implements $SessionWithSpeakerAndVenueCopyWith<$Res> {
  _$SessionWithSpeakerAndVenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionWithSpeakerAndVenue
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
    Object? venue = null,
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
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue,
    ) as $Val);
  }

  /// Create a copy of SessionWithSpeakerAndVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionVenueCopyWith<$Res> get venue {
    return $SessionVenueCopyWith<$Res>(_value.venue, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionWithSpeakerAndVenueImplCopyWith<$Res>
    implements $SessionWithSpeakerAndVenueCopyWith<$Res> {
  factory _$$SessionWithSpeakerAndVenueImplCopyWith(
          _$SessionWithSpeakerAndVenueImpl value,
          $Res Function(_$SessionWithSpeakerAndVenueImpl) then) =
      __$$SessionWithSpeakerAndVenueImplCopyWithImpl<$Res>;
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
      SessionVenue venue});

  @override
  $SessionVenueCopyWith<$Res> get venue;
}

/// @nodoc
class __$$SessionWithSpeakerAndVenueImplCopyWithImpl<$Res>
    extends _$SessionWithSpeakerAndVenueCopyWithImpl<$Res,
        _$SessionWithSpeakerAndVenueImpl>
    implements _$$SessionWithSpeakerAndVenueImplCopyWith<$Res> {
  __$$SessionWithSpeakerAndVenueImplCopyWithImpl(
      _$SessionWithSpeakerAndVenueImpl _value,
      $Res Function(_$SessionWithSpeakerAndVenueImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionWithSpeakerAndVenue
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
    Object? venue = null,
  }) {
    return _then(_$SessionWithSpeakerAndVenueImpl(
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
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionWithSpeakerAndVenueImpl implements _SessionWithSpeakerAndVenue {
  const _$SessionWithSpeakerAndVenueImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<ProfileWithSns> speakers,
      required this.venue})
      : _speakers = speakers;

  factory _$SessionWithSpeakerAndVenueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionWithSpeakerAndVenueImplFromJson(json);

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

  @override
  final SessionVenue venue;

  @override
  String toString() {
    return 'SessionWithSpeakerAndVenue(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, venue: $venue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionWithSpeakerAndVenueImpl &&
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
            (identical(other.venue, venue) || other.venue == venue));
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
      venue);

  /// Create a copy of SessionWithSpeakerAndVenue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionWithSpeakerAndVenueImplCopyWith<_$SessionWithSpeakerAndVenueImpl>
      get copyWith => __$$SessionWithSpeakerAndVenueImplCopyWithImpl<
          _$SessionWithSpeakerAndVenueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionWithSpeakerAndVenueImplToJson(
      this,
    );
  }
}

abstract class _SessionWithSpeakerAndVenue
    implements SessionWithSpeakerAndVenue {
  const factory _SessionWithSpeakerAndVenue(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime startsAt,
      required final DateTime endsAt,
      required final bool isLightningTalk,
      required final List<ProfileWithSns> speakers,
      required final SessionVenue venue}) = _$SessionWithSpeakerAndVenueImpl;

  factory _SessionWithSpeakerAndVenue.fromJson(Map<String, dynamic> json) =
      _$SessionWithSpeakerAndVenueImpl.fromJson;

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
  SessionVenue get venue;

  /// Create a copy of SessionWithSpeakerAndVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionWithSpeakerAndVenueImplCopyWith<_$SessionWithSpeakerAndVenueImpl>
      get copyWith => throw _privateConstructorUsedError;
}
