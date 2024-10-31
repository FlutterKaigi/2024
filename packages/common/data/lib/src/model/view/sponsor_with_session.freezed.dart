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
  List<SessionWithSpeakerAndVenue> get sessions =>
      throw _privateConstructorUsedError;

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
      SponsorType type,
      List<SessionWithSpeakerAndVenue> sessions});
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
    Object? sessions = null,
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
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionWithSpeakerAndVenue>,
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
      SponsorType type,
      List<SessionWithSpeakerAndVenue> sessions});
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
    Object? sessions = null,
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
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionWithSpeakerAndVenue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated('Use SponsorWithSessionV2View instead')
class _$SponsorWithSessionViewImpl implements _SponsorWithSessionView {
  const _$SponsorWithSessionViewImpl(
      {required this.id,
      required this.name,
      required this.logoName,
      required this.description,
      required this.url,
      required this.type,
      required final List<SessionWithSpeakerAndVenue> sessions})
      : _sessions = sessions;

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
  final List<SessionWithSpeakerAndVenue> _sessions;
  @override
  List<SessionWithSpeakerAndVenue> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SponsorWithSessionView(id: $id, name: $name, logoName: $logoName, description: $description, url: $url, type: $type, sessions: $sessions)';
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
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoName, description,
      url, type, const DeepCollectionEquality().hash(_sessions));

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
          required final SponsorType type,
          required final List<SessionWithSpeakerAndVenue> sessions}) =
      _$SponsorWithSessionViewImpl;

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
  @override
  List<SessionWithSpeakerAndVenue> get sessions;

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
  List<SessionWithSpeakerAndVenue> get sessions =>
      throw _privateConstructorUsedError;

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
      SponsorType type,
      List<SessionWithSpeakerAndVenue> sessions});
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
    Object? sessions = null,
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
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionWithSpeakerAndVenue>,
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
      SponsorType type,
      List<SessionWithSpeakerAndVenue> sessions});
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
    Object? sessions = null,
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
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionWithSpeakerAndVenue>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated('Use SponsorWithSessionV2 instead')
class _$SponsorWithSessionImpl implements _SponsorWithSession {
  const _$SponsorWithSessionImpl(
      {required this.id,
      required this.name,
      required this.logoUrl,
      required this.description,
      required this.url,
      required this.type,
      required final List<SessionWithSpeakerAndVenue> sessions})
      : _sessions = sessions;

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
  final List<SessionWithSpeakerAndVenue> _sessions;
  @override
  List<SessionWithSpeakerAndVenue> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SponsorWithSession(id: $id, name: $name, logoUrl: $logoUrl, description: $description, url: $url, type: $type, sessions: $sessions)';
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
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoUrl, description,
      url, type, const DeepCollectionEquality().hash(_sessions));

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
          required final SponsorType type,
          required final List<SessionWithSpeakerAndVenue> sessions}) =
      _$SponsorWithSessionImpl;

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
  @override
  List<SessionWithSpeakerAndVenue> get sessions;

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
  List<ProfileWithSnsView> get speakers => throw _privateConstructorUsedError;
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
      List<ProfileWithSnsView> speakers,
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
              as List<ProfileWithSnsView>,
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
      List<ProfileWithSnsView> speakers,
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
              as List<ProfileWithSnsView>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@Deprecated('Use SessionWithSpeakerAndVenueV2 instead')
class _$SessionWithSpeakerAndVenueImpl implements _SessionWithSpeakerAndVenue {
  const _$SessionWithSpeakerAndVenueImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<ProfileWithSnsView> speakers,
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
  final List<ProfileWithSnsView> _speakers;
  @override
  List<ProfileWithSnsView> get speakers {
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
      required final List<ProfileWithSnsView> speakers,
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
  List<ProfileWithSnsView> get speakers;
  @override
  SessionVenue get venue;

  /// Create a copy of SessionWithSpeakerAndVenue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionWithSpeakerAndVenueImplCopyWith<_$SessionWithSpeakerAndVenueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SponsorWithSessionV2View _$SponsorWithSessionV2ViewFromJson(
    Map<String, dynamic> json) {
  return _SponsorWithSessionV2View.fromJson(json);
}

/// @nodoc
mixin _$SponsorWithSessionV2View {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logoName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Uri? get url => throw _privateConstructorUsedError;
  SponsorType get type => throw _privateConstructorUsedError;
  List<SponsorWithSessionV2ViewSession> get sessions =>
      throw _privateConstructorUsedError;

  /// Serializes this SponsorWithSessionV2View to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorWithSessionV2View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorWithSessionV2ViewCopyWith<SponsorWithSessionV2View> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorWithSessionV2ViewCopyWith<$Res> {
  factory $SponsorWithSessionV2ViewCopyWith(SponsorWithSessionV2View value,
          $Res Function(SponsorWithSessionV2View) then) =
      _$SponsorWithSessionV2ViewCopyWithImpl<$Res, SponsorWithSessionV2View>;
  @useResult
  $Res call(
      {int id,
      String name,
      String logoName,
      String description,
      Uri? url,
      SponsorType type,
      List<SponsorWithSessionV2ViewSession> sessions});
}

/// @nodoc
class _$SponsorWithSessionV2ViewCopyWithImpl<$Res,
        $Val extends SponsorWithSessionV2View>
    implements $SponsorWithSessionV2ViewCopyWith<$Res> {
  _$SponsorWithSessionV2ViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorWithSessionV2View
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
    Object? sessions = null,
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
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SponsorWithSessionV2ViewSession>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorWithSessionV2ViewImplCopyWith<$Res>
    implements $SponsorWithSessionV2ViewCopyWith<$Res> {
  factory _$$SponsorWithSessionV2ViewImplCopyWith(
          _$SponsorWithSessionV2ViewImpl value,
          $Res Function(_$SponsorWithSessionV2ViewImpl) then) =
      __$$SponsorWithSessionV2ViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String logoName,
      String description,
      Uri? url,
      SponsorType type,
      List<SponsorWithSessionV2ViewSession> sessions});
}

/// @nodoc
class __$$SponsorWithSessionV2ViewImplCopyWithImpl<$Res>
    extends _$SponsorWithSessionV2ViewCopyWithImpl<$Res,
        _$SponsorWithSessionV2ViewImpl>
    implements _$$SponsorWithSessionV2ViewImplCopyWith<$Res> {
  __$$SponsorWithSessionV2ViewImplCopyWithImpl(
      _$SponsorWithSessionV2ViewImpl _value,
      $Res Function(_$SponsorWithSessionV2ViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorWithSessionV2View
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
    Object? sessions = null,
  }) {
    return _then(_$SponsorWithSessionV2ViewImpl(
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
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SponsorWithSessionV2ViewSession>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorWithSessionV2ViewImpl implements _SponsorWithSessionV2View {
  const _$SponsorWithSessionV2ViewImpl(
      {required this.id,
      required this.name,
      required this.logoName,
      required this.description,
      required this.url,
      required this.type,
      required final List<SponsorWithSessionV2ViewSession> sessions})
      : _sessions = sessions;

  factory _$SponsorWithSessionV2ViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorWithSessionV2ViewImplFromJson(json);

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
  final List<SponsorWithSessionV2ViewSession> _sessions;
  @override
  List<SponsorWithSessionV2ViewSession> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SponsorWithSessionV2View(id: $id, name: $name, logoName: $logoName, description: $description, url: $url, type: $type, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorWithSessionV2ViewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoName, logoName) ||
                other.logoName == logoName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoName, description,
      url, type, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of SponsorWithSessionV2View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorWithSessionV2ViewImplCopyWith<_$SponsorWithSessionV2ViewImpl>
      get copyWith => __$$SponsorWithSessionV2ViewImplCopyWithImpl<
          _$SponsorWithSessionV2ViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorWithSessionV2ViewImplToJson(
      this,
    );
  }
}

abstract class _SponsorWithSessionV2View implements SponsorWithSessionV2View {
  const factory _SponsorWithSessionV2View(
          {required final int id,
          required final String name,
          required final String logoName,
          required final String description,
          required final Uri? url,
          required final SponsorType type,
          required final List<SponsorWithSessionV2ViewSession> sessions}) =
      _$SponsorWithSessionV2ViewImpl;

  factory _SponsorWithSessionV2View.fromJson(Map<String, dynamic> json) =
      _$SponsorWithSessionV2ViewImpl.fromJson;

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
  @override
  List<SponsorWithSessionV2ViewSession> get sessions;

  /// Create a copy of SponsorWithSessionV2View
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorWithSessionV2ViewImplCopyWith<_$SponsorWithSessionV2ViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SponsorWithSessionV2ViewSession _$SponsorWithSessionV2ViewSessionFromJson(
    Map<String, dynamic> json) {
  return _SponsorWithSessionV2ViewSession.fromJson(json);
}

/// @nodoc
mixin _$SponsorWithSessionV2ViewSession {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<SpeakerTable> get speakers => throw _privateConstructorUsedError;
  SessionVenue get venue => throw _privateConstructorUsedError;

  /// Serializes this SponsorWithSessionV2ViewSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorWithSessionV2ViewSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorWithSessionV2ViewSessionCopyWith<SponsorWithSessionV2ViewSession>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorWithSessionV2ViewSessionCopyWith<$Res> {
  factory $SponsorWithSessionV2ViewSessionCopyWith(
          SponsorWithSessionV2ViewSession value,
          $Res Function(SponsorWithSessionV2ViewSession) then) =
      _$SponsorWithSessionV2ViewSessionCopyWithImpl<$Res,
          SponsorWithSessionV2ViewSession>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<SpeakerTable> speakers,
      SessionVenue venue});

  $SessionVenueCopyWith<$Res> get venue;
}

/// @nodoc
class _$SponsorWithSessionV2ViewSessionCopyWithImpl<$Res,
        $Val extends SponsorWithSessionV2ViewSession>
    implements $SponsorWithSessionV2ViewSessionCopyWith<$Res> {
  _$SponsorWithSessionV2ViewSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorWithSessionV2ViewSession
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
              as List<SpeakerTable>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue,
    ) as $Val);
  }

  /// Create a copy of SponsorWithSessionV2ViewSession
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
abstract class _$$SponsorWithSessionV2ViewSessionImplCopyWith<$Res>
    implements $SponsorWithSessionV2ViewSessionCopyWith<$Res> {
  factory _$$SponsorWithSessionV2ViewSessionImplCopyWith(
          _$SponsorWithSessionV2ViewSessionImpl value,
          $Res Function(_$SponsorWithSessionV2ViewSessionImpl) then) =
      __$$SponsorWithSessionV2ViewSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<SpeakerTable> speakers,
      SessionVenue venue});

  @override
  $SessionVenueCopyWith<$Res> get venue;
}

/// @nodoc
class __$$SponsorWithSessionV2ViewSessionImplCopyWithImpl<$Res>
    extends _$SponsorWithSessionV2ViewSessionCopyWithImpl<$Res,
        _$SponsorWithSessionV2ViewSessionImpl>
    implements _$$SponsorWithSessionV2ViewSessionImplCopyWith<$Res> {
  __$$SponsorWithSessionV2ViewSessionImplCopyWithImpl(
      _$SponsorWithSessionV2ViewSessionImpl _value,
      $Res Function(_$SponsorWithSessionV2ViewSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorWithSessionV2ViewSession
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
    return _then(_$SponsorWithSessionV2ViewSessionImpl(
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
              as List<SpeakerTable>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorWithSessionV2ViewSessionImpl
    implements _SponsorWithSessionV2ViewSession {
  const _$SponsorWithSessionV2ViewSessionImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<SpeakerTable> speakers,
      required this.venue})
      : _speakers = speakers;

  factory _$SponsorWithSessionV2ViewSessionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SponsorWithSessionV2ViewSessionImplFromJson(json);

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
  final List<SpeakerTable> _speakers;
  @override
  List<SpeakerTable> get speakers {
    if (_speakers is EqualUnmodifiableListView) return _speakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakers);
  }

  @override
  final SessionVenue venue;

  @override
  String toString() {
    return 'SponsorWithSessionV2ViewSession(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, venue: $venue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorWithSessionV2ViewSessionImpl &&
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

  /// Create a copy of SponsorWithSessionV2ViewSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorWithSessionV2ViewSessionImplCopyWith<
          _$SponsorWithSessionV2ViewSessionImpl>
      get copyWith => __$$SponsorWithSessionV2ViewSessionImplCopyWithImpl<
          _$SponsorWithSessionV2ViewSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorWithSessionV2ViewSessionImplToJson(
      this,
    );
  }
}

abstract class _SponsorWithSessionV2ViewSession
    implements SponsorWithSessionV2ViewSession {
  const factory _SponsorWithSessionV2ViewSession(
          {required final String id,
          required final String title,
          required final String description,
          required final DateTime startsAt,
          required final DateTime endsAt,
          required final bool isLightningTalk,
          required final List<SpeakerTable> speakers,
          required final SessionVenue venue}) =
      _$SponsorWithSessionV2ViewSessionImpl;

  factory _SponsorWithSessionV2ViewSession.fromJson(Map<String, dynamic> json) =
      _$SponsorWithSessionV2ViewSessionImpl.fromJson;

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
  List<SpeakerTable> get speakers;
  @override
  SessionVenue get venue;

  /// Create a copy of SponsorWithSessionV2ViewSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorWithSessionV2ViewSessionImplCopyWith<
          _$SponsorWithSessionV2ViewSessionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SponsorWithSessionV2 _$SponsorWithSessionV2FromJson(Map<String, dynamic> json) {
  return _SponsorWithSessionV2.fromJson(json);
}

/// @nodoc
mixin _$SponsorWithSessionV2 {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Uri? get logoUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Uri? get url => throw _privateConstructorUsedError;
  SponsorType get type => throw _privateConstructorUsedError;
  List<SponsorWithSessionV2Session> get sessions =>
      throw _privateConstructorUsedError;

  /// Serializes this SponsorWithSessionV2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorWithSessionV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorWithSessionV2CopyWith<SponsorWithSessionV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorWithSessionV2CopyWith<$Res> {
  factory $SponsorWithSessionV2CopyWith(SponsorWithSessionV2 value,
          $Res Function(SponsorWithSessionV2) then) =
      _$SponsorWithSessionV2CopyWithImpl<$Res, SponsorWithSessionV2>;
  @useResult
  $Res call(
      {int id,
      String name,
      Uri? logoUrl,
      String description,
      Uri? url,
      SponsorType type,
      List<SponsorWithSessionV2Session> sessions});
}

/// @nodoc
class _$SponsorWithSessionV2CopyWithImpl<$Res,
        $Val extends SponsorWithSessionV2>
    implements $SponsorWithSessionV2CopyWith<$Res> {
  _$SponsorWithSessionV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorWithSessionV2
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
    Object? sessions = null,
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
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SponsorWithSessionV2Session>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SponsorWithSessionV2ImplCopyWith<$Res>
    implements $SponsorWithSessionV2CopyWith<$Res> {
  factory _$$SponsorWithSessionV2ImplCopyWith(_$SponsorWithSessionV2Impl value,
          $Res Function(_$SponsorWithSessionV2Impl) then) =
      __$$SponsorWithSessionV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      Uri? logoUrl,
      String description,
      Uri? url,
      SponsorType type,
      List<SponsorWithSessionV2Session> sessions});
}

/// @nodoc
class __$$SponsorWithSessionV2ImplCopyWithImpl<$Res>
    extends _$SponsorWithSessionV2CopyWithImpl<$Res, _$SponsorWithSessionV2Impl>
    implements _$$SponsorWithSessionV2ImplCopyWith<$Res> {
  __$$SponsorWithSessionV2ImplCopyWithImpl(_$SponsorWithSessionV2Impl _value,
      $Res Function(_$SponsorWithSessionV2Impl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorWithSessionV2
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
    Object? sessions = null,
  }) {
    return _then(_$SponsorWithSessionV2Impl(
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
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SponsorWithSessionV2Session>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorWithSessionV2Impl implements _SponsorWithSessionV2 {
  const _$SponsorWithSessionV2Impl(
      {required this.id,
      required this.name,
      required this.logoUrl,
      required this.description,
      required this.url,
      required this.type,
      required final List<SponsorWithSessionV2Session> sessions})
      : _sessions = sessions;

  factory _$SponsorWithSessionV2Impl.fromJson(Map<String, dynamic> json) =>
      _$$SponsorWithSessionV2ImplFromJson(json);

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
  final List<SponsorWithSessionV2Session> _sessions;
  @override
  List<SponsorWithSessionV2Session> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SponsorWithSessionV2(id: $id, name: $name, logoUrl: $logoUrl, description: $description, url: $url, type: $type, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorWithSessionV2Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logoUrl, description,
      url, type, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of SponsorWithSessionV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorWithSessionV2ImplCopyWith<_$SponsorWithSessionV2Impl>
      get copyWith =>
          __$$SponsorWithSessionV2ImplCopyWithImpl<_$SponsorWithSessionV2Impl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorWithSessionV2ImplToJson(
      this,
    );
  }
}

abstract class _SponsorWithSessionV2 implements SponsorWithSessionV2 {
  const factory _SponsorWithSessionV2(
          {required final int id,
          required final String name,
          required final Uri? logoUrl,
          required final String description,
          required final Uri? url,
          required final SponsorType type,
          required final List<SponsorWithSessionV2Session> sessions}) =
      _$SponsorWithSessionV2Impl;

  factory _SponsorWithSessionV2.fromJson(Map<String, dynamic> json) =
      _$SponsorWithSessionV2Impl.fromJson;

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
  @override
  List<SponsorWithSessionV2Session> get sessions;

  /// Create a copy of SponsorWithSessionV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorWithSessionV2ImplCopyWith<_$SponsorWithSessionV2Impl>
      get copyWith => throw _privateConstructorUsedError;
}

SponsorWithSessionV2Session _$SponsorWithSessionV2SessionFromJson(
    Map<String, dynamic> json) {
  return _SponsorWithSessionV2Session.fromJson(json);
}

/// @nodoc
mixin _$SponsorWithSessionV2Session {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<Speaker> get speakers => throw _privateConstructorUsedError;
  SessionVenue get venue => throw _privateConstructorUsedError;

  /// Serializes this SponsorWithSessionV2Session to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SponsorWithSessionV2Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SponsorWithSessionV2SessionCopyWith<SponsorWithSessionV2Session>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SponsorWithSessionV2SessionCopyWith<$Res> {
  factory $SponsorWithSessionV2SessionCopyWith(
          SponsorWithSessionV2Session value,
          $Res Function(SponsorWithSessionV2Session) then) =
      _$SponsorWithSessionV2SessionCopyWithImpl<$Res,
          SponsorWithSessionV2Session>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<Speaker> speakers,
      SessionVenue venue});

  $SessionVenueCopyWith<$Res> get venue;
}

/// @nodoc
class _$SponsorWithSessionV2SessionCopyWithImpl<$Res,
        $Val extends SponsorWithSessionV2Session>
    implements $SponsorWithSessionV2SessionCopyWith<$Res> {
  _$SponsorWithSessionV2SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SponsorWithSessionV2Session
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
              as List<Speaker>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue,
    ) as $Val);
  }

  /// Create a copy of SponsorWithSessionV2Session
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
abstract class _$$SponsorWithSessionV2SessionImplCopyWith<$Res>
    implements $SponsorWithSessionV2SessionCopyWith<$Res> {
  factory _$$SponsorWithSessionV2SessionImplCopyWith(
          _$SponsorWithSessionV2SessionImpl value,
          $Res Function(_$SponsorWithSessionV2SessionImpl) then) =
      __$$SponsorWithSessionV2SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<Speaker> speakers,
      SessionVenue venue});

  @override
  $SessionVenueCopyWith<$Res> get venue;
}

/// @nodoc
class __$$SponsorWithSessionV2SessionImplCopyWithImpl<$Res>
    extends _$SponsorWithSessionV2SessionCopyWithImpl<$Res,
        _$SponsorWithSessionV2SessionImpl>
    implements _$$SponsorWithSessionV2SessionImplCopyWith<$Res> {
  __$$SponsorWithSessionV2SessionImplCopyWithImpl(
      _$SponsorWithSessionV2SessionImpl _value,
      $Res Function(_$SponsorWithSessionV2SessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SponsorWithSessionV2Session
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
    return _then(_$SponsorWithSessionV2SessionImpl(
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
              as List<Speaker>,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SponsorWithSessionV2SessionImpl
    implements _SponsorWithSessionV2Session {
  const _$SponsorWithSessionV2SessionImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<Speaker> speakers,
      required this.venue})
      : _speakers = speakers;

  factory _$SponsorWithSessionV2SessionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SponsorWithSessionV2SessionImplFromJson(json);

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
  final List<Speaker> _speakers;
  @override
  List<Speaker> get speakers {
    if (_speakers is EqualUnmodifiableListView) return _speakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speakers);
  }

  @override
  final SessionVenue venue;

  @override
  String toString() {
    return 'SponsorWithSessionV2Session(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, venue: $venue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SponsorWithSessionV2SessionImpl &&
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

  /// Create a copy of SponsorWithSessionV2Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SponsorWithSessionV2SessionImplCopyWith<_$SponsorWithSessionV2SessionImpl>
      get copyWith => __$$SponsorWithSessionV2SessionImplCopyWithImpl<
          _$SponsorWithSessionV2SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SponsorWithSessionV2SessionImplToJson(
      this,
    );
  }
}

abstract class _SponsorWithSessionV2Session
    implements SponsorWithSessionV2Session {
  const factory _SponsorWithSessionV2Session(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime startsAt,
      required final DateTime endsAt,
      required final bool isLightningTalk,
      required final List<Speaker> speakers,
      required final SessionVenue venue}) = _$SponsorWithSessionV2SessionImpl;

  factory _SponsorWithSessionV2Session.fromJson(Map<String, dynamic> json) =
      _$SponsorWithSessionV2SessionImpl.fromJson;

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
  List<Speaker> get speakers;
  @override
  SessionVenue get venue;

  /// Create a copy of SponsorWithSessionV2Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SponsorWithSessionV2SessionImplCopyWith<_$SponsorWithSessionV2SessionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
