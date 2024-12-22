// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_venues_with_sessions_v4_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionVenuesWithSessionsV4View _$SessionVenuesWithSessionsV4ViewFromJson(
    Map<String, dynamic> json) {
  return _SessionVenuesWithSessionsV4View.fromJson(json);
}

/// @nodoc
mixin _$SessionVenuesWithSessionsV4View {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SessionsWithSpeakerSponsorV4View> get sessions =>
      throw _privateConstructorUsedError;

  /// Serializes this SessionVenuesWithSessionsV4View to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionVenuesWithSessionsV4View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionVenuesWithSessionsV4ViewCopyWith<SessionVenuesWithSessionsV4View>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionVenuesWithSessionsV4ViewCopyWith<$Res> {
  factory $SessionVenuesWithSessionsV4ViewCopyWith(
          SessionVenuesWithSessionsV4View value,
          $Res Function(SessionVenuesWithSessionsV4View) then) =
      _$SessionVenuesWithSessionsV4ViewCopyWithImpl<$Res,
          SessionVenuesWithSessionsV4View>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<SessionsWithSpeakerSponsorV4View> sessions});
}

/// @nodoc
class _$SessionVenuesWithSessionsV4ViewCopyWithImpl<$Res,
        $Val extends SessionVenuesWithSessionsV4View>
    implements $SessionVenuesWithSessionsV4ViewCopyWith<$Res> {
  _$SessionVenuesWithSessionsV4ViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionVenuesWithSessionsV4View
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
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
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionsWithSpeakerSponsorV4View>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionVenuesWithSessionsV4ViewImplCopyWith<$Res>
    implements $SessionVenuesWithSessionsV4ViewCopyWith<$Res> {
  factory _$$SessionVenuesWithSessionsV4ViewImplCopyWith(
          _$SessionVenuesWithSessionsV4ViewImpl value,
          $Res Function(_$SessionVenuesWithSessionsV4ViewImpl) then) =
      __$$SessionVenuesWithSessionsV4ViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<SessionsWithSpeakerSponsorV4View> sessions});
}

/// @nodoc
class __$$SessionVenuesWithSessionsV4ViewImplCopyWithImpl<$Res>
    extends _$SessionVenuesWithSessionsV4ViewCopyWithImpl<$Res,
        _$SessionVenuesWithSessionsV4ViewImpl>
    implements _$$SessionVenuesWithSessionsV4ViewImplCopyWith<$Res> {
  __$$SessionVenuesWithSessionsV4ViewImplCopyWithImpl(
      _$SessionVenuesWithSessionsV4ViewImpl _value,
      $Res Function(_$SessionVenuesWithSessionsV4ViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionVenuesWithSessionsV4View
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
  }) {
    return _then(_$SessionVenuesWithSessionsV4ViewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionsWithSpeakerSponsorV4View>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionVenuesWithSessionsV4ViewImpl
    implements _SessionVenuesWithSessionsV4View {
  const _$SessionVenuesWithSessionsV4ViewImpl(
      {required this.id,
      required this.name,
      required final List<SessionsWithSpeakerSponsorV4View> sessions})
      : _sessions = sessions;

  factory _$SessionVenuesWithSessionsV4ViewImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionVenuesWithSessionsV4ViewImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<SessionsWithSpeakerSponsorV4View> _sessions;
  @override
  List<SessionsWithSpeakerSponsorV4View> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SessionVenuesWithSessionsV4View(id: $id, name: $name, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionVenuesWithSessionsV4ViewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of SessionVenuesWithSessionsV4View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionVenuesWithSessionsV4ViewImplCopyWith<
          _$SessionVenuesWithSessionsV4ViewImpl>
      get copyWith => __$$SessionVenuesWithSessionsV4ViewImplCopyWithImpl<
          _$SessionVenuesWithSessionsV4ViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionVenuesWithSessionsV4ViewImplToJson(
      this,
    );
  }
}

abstract class _SessionVenuesWithSessionsV4View
    implements SessionVenuesWithSessionsV4View {
  const factory _SessionVenuesWithSessionsV4View(
          {required final String id,
          required final String name,
          required final List<SessionsWithSpeakerSponsorV4View> sessions}) =
      _$SessionVenuesWithSessionsV4ViewImpl;

  factory _SessionVenuesWithSessionsV4View.fromJson(Map<String, dynamic> json) =
      _$SessionVenuesWithSessionsV4ViewImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SessionsWithSpeakerSponsorV4View> get sessions;

  /// Create a copy of SessionVenuesWithSessionsV4View
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionVenuesWithSessionsV4ViewImplCopyWith<
          _$SessionVenuesWithSessionsV4ViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionsWithSpeakerSponsorV4View _$SessionsWithSpeakerSponsorV4ViewFromJson(
    Map<String, dynamic> json) {
  return _SessionsWithSpeakerSponsorV4View.fromJson(json);
}

/// @nodoc
mixin _$SessionsWithSpeakerSponsorV4View {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<SpeakerTable> get speakers => throw _privateConstructorUsedError;
  List<SponsorV2Table> get sponsors => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson)
  Uri? get videoUrl => throw _privateConstructorUsedError;

  /// Serializes this SessionsWithSpeakerSponsorV4View to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionsWithSpeakerSponsorV4View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionsWithSpeakerSponsorV4ViewCopyWith<SessionsWithSpeakerSponsorV4View>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsWithSpeakerSponsorV4ViewCopyWith<$Res> {
  factory $SessionsWithSpeakerSponsorV4ViewCopyWith(
          SessionsWithSpeakerSponsorV4View value,
          $Res Function(SessionsWithSpeakerSponsorV4View) then) =
      _$SessionsWithSpeakerSponsorV4ViewCopyWithImpl<$Res,
          SessionsWithSpeakerSponsorV4View>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<SpeakerTable> speakers,
      List<SponsorV2Table> sponsors,
      @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson) Uri? videoUrl});
}

/// @nodoc
class _$SessionsWithSpeakerSponsorV4ViewCopyWithImpl<$Res,
        $Val extends SessionsWithSpeakerSponsorV4View>
    implements $SessionsWithSpeakerSponsorV4ViewCopyWith<$Res> {
  _$SessionsWithSpeakerSponsorV4ViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionsWithSpeakerSponsorV4View
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
    Object? videoUrl = freezed,
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
      sponsors: null == sponsors
          ? _value.sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<SponsorV2Table>,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionsWithSpeakerSponsorV4ViewImplCopyWith<$Res>
    implements $SessionsWithSpeakerSponsorV4ViewCopyWith<$Res> {
  factory _$$SessionsWithSpeakerSponsorV4ViewImplCopyWith(
          _$SessionsWithSpeakerSponsorV4ViewImpl value,
          $Res Function(_$SessionsWithSpeakerSponsorV4ViewImpl) then) =
      __$$SessionsWithSpeakerSponsorV4ViewImplCopyWithImpl<$Res>;
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
      List<SponsorV2Table> sponsors,
      @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson) Uri? videoUrl});
}

/// @nodoc
class __$$SessionsWithSpeakerSponsorV4ViewImplCopyWithImpl<$Res>
    extends _$SessionsWithSpeakerSponsorV4ViewCopyWithImpl<$Res,
        _$SessionsWithSpeakerSponsorV4ViewImpl>
    implements _$$SessionsWithSpeakerSponsorV4ViewImplCopyWith<$Res> {
  __$$SessionsWithSpeakerSponsorV4ViewImplCopyWithImpl(
      _$SessionsWithSpeakerSponsorV4ViewImpl _value,
      $Res Function(_$SessionsWithSpeakerSponsorV4ViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionsWithSpeakerSponsorV4View
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
    Object? videoUrl = freezed,
  }) {
    return _then(_$SessionsWithSpeakerSponsorV4ViewImpl(
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
      sponsors: null == sponsors
          ? _value._sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<SponsorV2Table>,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionsWithSpeakerSponsorV4ViewImpl
    implements _SessionsWithSpeakerSponsorV4View {
  const _$SessionsWithSpeakerSponsorV4ViewImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<SpeakerTable> speakers,
      required final List<SponsorV2Table> sponsors,
      @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson) this.videoUrl})
      : _speakers = speakers,
        _sponsors = sponsors;

  factory _$SessionsWithSpeakerSponsorV4ViewImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionsWithSpeakerSponsorV4ViewImplFromJson(json);

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

  final List<SponsorV2Table> _sponsors;
  @override
  List<SponsorV2Table> get sponsors {
    if (_sponsors is EqualUnmodifiableListView) return _sponsors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sponsors);
  }

  @override
  @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson)
  final Uri? videoUrl;

  @override
  String toString() {
    return 'SessionsWithSpeakerSponsorV4View(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, sponsors: $sponsors, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsWithSpeakerSponsorV4ViewImpl &&
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
            const DeepCollectionEquality().equals(other._sponsors, _sponsors) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
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
      const DeepCollectionEquality().hash(_sponsors),
      videoUrl);

  /// Create a copy of SessionsWithSpeakerSponsorV4View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsWithSpeakerSponsorV4ViewImplCopyWith<
          _$SessionsWithSpeakerSponsorV4ViewImpl>
      get copyWith => __$$SessionsWithSpeakerSponsorV4ViewImplCopyWithImpl<
          _$SessionsWithSpeakerSponsorV4ViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionsWithSpeakerSponsorV4ViewImplToJson(
      this,
    );
  }
}

abstract class _SessionsWithSpeakerSponsorV4View
    implements SessionsWithSpeakerSponsorV4View {
  const factory _SessionsWithSpeakerSponsorV4View(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime startsAt,
      required final DateTime endsAt,
      required final bool isLightningTalk,
      required final List<SpeakerTable> speakers,
      required final List<SponsorV2Table> sponsors,
      @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson)
      final Uri? videoUrl}) = _$SessionsWithSpeakerSponsorV4ViewImpl;

  factory _SessionsWithSpeakerSponsorV4View.fromJson(
          Map<String, dynamic> json) =
      _$SessionsWithSpeakerSponsorV4ViewImpl.fromJson;

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
  List<SponsorV2Table> get sponsors;
  @override
  @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson)
  Uri? get videoUrl;

  /// Create a copy of SessionsWithSpeakerSponsorV4View
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionsWithSpeakerSponsorV4ViewImplCopyWith<
          _$SessionsWithSpeakerSponsorV4ViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionVenuesWithSessionsV4 _$SessionVenuesWithSessionsV4FromJson(
    Map<String, dynamic> json) {
  return _SessionVenuesWithSessionsV4.fromJson(json);
}

/// @nodoc
mixin _$SessionVenuesWithSessionsV4 {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SessionsWithSpeakerSponsorV4> get sessions =>
      throw _privateConstructorUsedError;

  /// Serializes this SessionVenuesWithSessionsV4 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionVenuesWithSessionsV4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionVenuesWithSessionsV4CopyWith<SessionVenuesWithSessionsV4>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionVenuesWithSessionsV4CopyWith<$Res> {
  factory $SessionVenuesWithSessionsV4CopyWith(
          SessionVenuesWithSessionsV4 value,
          $Res Function(SessionVenuesWithSessionsV4) then) =
      _$SessionVenuesWithSessionsV4CopyWithImpl<$Res,
          SessionVenuesWithSessionsV4>;
  @useResult
  $Res call(
      {String id, String name, List<SessionsWithSpeakerSponsorV4> sessions});
}

/// @nodoc
class _$SessionVenuesWithSessionsV4CopyWithImpl<$Res,
        $Val extends SessionVenuesWithSessionsV4>
    implements $SessionVenuesWithSessionsV4CopyWith<$Res> {
  _$SessionVenuesWithSessionsV4CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionVenuesWithSessionsV4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
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
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionsWithSpeakerSponsorV4>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionVenuesWithSessionsV4ImplCopyWith<$Res>
    implements $SessionVenuesWithSessionsV4CopyWith<$Res> {
  factory _$$SessionVenuesWithSessionsV4ImplCopyWith(
          _$SessionVenuesWithSessionsV4Impl value,
          $Res Function(_$SessionVenuesWithSessionsV4Impl) then) =
      __$$SessionVenuesWithSessionsV4ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, List<SessionsWithSpeakerSponsorV4> sessions});
}

/// @nodoc
class __$$SessionVenuesWithSessionsV4ImplCopyWithImpl<$Res>
    extends _$SessionVenuesWithSessionsV4CopyWithImpl<$Res,
        _$SessionVenuesWithSessionsV4Impl>
    implements _$$SessionVenuesWithSessionsV4ImplCopyWith<$Res> {
  __$$SessionVenuesWithSessionsV4ImplCopyWithImpl(
      _$SessionVenuesWithSessionsV4Impl _value,
      $Res Function(_$SessionVenuesWithSessionsV4Impl) _then)
      : super(_value, _then);

  /// Create a copy of SessionVenuesWithSessionsV4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
  }) {
    return _then(_$SessionVenuesWithSessionsV4Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionsWithSpeakerSponsorV4>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionVenuesWithSessionsV4Impl
    implements _SessionVenuesWithSessionsV4 {
  const _$SessionVenuesWithSessionsV4Impl(
      {required this.id,
      required this.name,
      required final List<SessionsWithSpeakerSponsorV4> sessions})
      : _sessions = sessions;

  factory _$SessionVenuesWithSessionsV4Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionVenuesWithSessionsV4ImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<SessionsWithSpeakerSponsorV4> _sessions;
  @override
  List<SessionsWithSpeakerSponsorV4> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SessionVenuesWithSessionsV4(id: $id, name: $name, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionVenuesWithSessionsV4Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of SessionVenuesWithSessionsV4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionVenuesWithSessionsV4ImplCopyWith<_$SessionVenuesWithSessionsV4Impl>
      get copyWith => __$$SessionVenuesWithSessionsV4ImplCopyWithImpl<
          _$SessionVenuesWithSessionsV4Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionVenuesWithSessionsV4ImplToJson(
      this,
    );
  }
}

abstract class _SessionVenuesWithSessionsV4
    implements SessionVenuesWithSessionsV4 {
  const factory _SessionVenuesWithSessionsV4(
          {required final String id,
          required final String name,
          required final List<SessionsWithSpeakerSponsorV4> sessions}) =
      _$SessionVenuesWithSessionsV4Impl;

  factory _SessionVenuesWithSessionsV4.fromJson(Map<String, dynamic> json) =
      _$SessionVenuesWithSessionsV4Impl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SessionsWithSpeakerSponsorV4> get sessions;

  /// Create a copy of SessionVenuesWithSessionsV4
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionVenuesWithSessionsV4ImplCopyWith<_$SessionVenuesWithSessionsV4Impl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionsWithSpeakerSponsorV4 _$SessionsWithSpeakerSponsorV4FromJson(
    Map<String, dynamic> json) {
  return _SessionsWithSpeakerSponsorV4.fromJson(json);
}

/// @nodoc
mixin _$SessionsWithSpeakerSponsorV4 {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<Speaker> get speakers => throw _privateConstructorUsedError;
  List<SponsorV2> get sponsors => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson)
  Uri? get videoUrl => throw _privateConstructorUsedError;

  /// Serializes this SessionsWithSpeakerSponsorV4 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionsWithSpeakerSponsorV4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionsWithSpeakerSponsorV4CopyWith<SessionsWithSpeakerSponsorV4>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsWithSpeakerSponsorV4CopyWith<$Res> {
  factory $SessionsWithSpeakerSponsorV4CopyWith(
          SessionsWithSpeakerSponsorV4 value,
          $Res Function(SessionsWithSpeakerSponsorV4) then) =
      _$SessionsWithSpeakerSponsorV4CopyWithImpl<$Res,
          SessionsWithSpeakerSponsorV4>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<Speaker> speakers,
      List<SponsorV2> sponsors,
      @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson) Uri? videoUrl});
}

/// @nodoc
class _$SessionsWithSpeakerSponsorV4CopyWithImpl<$Res,
        $Val extends SessionsWithSpeakerSponsorV4>
    implements $SessionsWithSpeakerSponsorV4CopyWith<$Res> {
  _$SessionsWithSpeakerSponsorV4CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionsWithSpeakerSponsorV4
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
    Object? videoUrl = freezed,
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
      sponsors: null == sponsors
          ? _value.sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<SponsorV2>,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionsWithSpeakerSponsorV4ImplCopyWith<$Res>
    implements $SessionsWithSpeakerSponsorV4CopyWith<$Res> {
  factory _$$SessionsWithSpeakerSponsorV4ImplCopyWith(
          _$SessionsWithSpeakerSponsorV4Impl value,
          $Res Function(_$SessionsWithSpeakerSponsorV4Impl) then) =
      __$$SessionsWithSpeakerSponsorV4ImplCopyWithImpl<$Res>;
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
      List<SponsorV2> sponsors,
      @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson) Uri? videoUrl});
}

/// @nodoc
class __$$SessionsWithSpeakerSponsorV4ImplCopyWithImpl<$Res>
    extends _$SessionsWithSpeakerSponsorV4CopyWithImpl<$Res,
        _$SessionsWithSpeakerSponsorV4Impl>
    implements _$$SessionsWithSpeakerSponsorV4ImplCopyWith<$Res> {
  __$$SessionsWithSpeakerSponsorV4ImplCopyWithImpl(
      _$SessionsWithSpeakerSponsorV4Impl _value,
      $Res Function(_$SessionsWithSpeakerSponsorV4Impl) _then)
      : super(_value, _then);

  /// Create a copy of SessionsWithSpeakerSponsorV4
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
    Object? videoUrl = freezed,
  }) {
    return _then(_$SessionsWithSpeakerSponsorV4Impl(
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
      sponsors: null == sponsors
          ? _value._sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<SponsorV2>,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionsWithSpeakerSponsorV4Impl
    implements _SessionsWithSpeakerSponsorV4 {
  const _$SessionsWithSpeakerSponsorV4Impl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<Speaker> speakers,
      required final List<SponsorV2> sponsors,
      @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson) this.videoUrl})
      : _speakers = speakers,
        _sponsors = sponsors;

  factory _$SessionsWithSpeakerSponsorV4Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionsWithSpeakerSponsorV4ImplFromJson(json);

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

  final List<SponsorV2> _sponsors;
  @override
  List<SponsorV2> get sponsors {
    if (_sponsors is EqualUnmodifiableListView) return _sponsors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sponsors);
  }

  @override
  @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson)
  final Uri? videoUrl;

  @override
  String toString() {
    return 'SessionsWithSpeakerSponsorV4(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, sponsors: $sponsors, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsWithSpeakerSponsorV4Impl &&
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
            const DeepCollectionEquality().equals(other._sponsors, _sponsors) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
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
      const DeepCollectionEquality().hash(_sponsors),
      videoUrl);

  /// Create a copy of SessionsWithSpeakerSponsorV4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsWithSpeakerSponsorV4ImplCopyWith<
          _$SessionsWithSpeakerSponsorV4Impl>
      get copyWith => __$$SessionsWithSpeakerSponsorV4ImplCopyWithImpl<
          _$SessionsWithSpeakerSponsorV4Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionsWithSpeakerSponsorV4ImplToJson(
      this,
    );
  }
}

abstract class _SessionsWithSpeakerSponsorV4
    implements SessionsWithSpeakerSponsorV4 {
  const factory _SessionsWithSpeakerSponsorV4(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime startsAt,
      required final DateTime endsAt,
      required final bool isLightningTalk,
      required final List<Speaker> speakers,
      required final List<SponsorV2> sponsors,
      @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson)
      final Uri? videoUrl}) = _$SessionsWithSpeakerSponsorV4Impl;

  factory _SessionsWithSpeakerSponsorV4.fromJson(Map<String, dynamic> json) =
      _$SessionsWithSpeakerSponsorV4Impl.fromJson;

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
  List<SponsorV2> get sponsors;
  @override
  @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson)
  Uri? get videoUrl;

  /// Create a copy of SessionsWithSpeakerSponsorV4
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionsWithSpeakerSponsorV4ImplCopyWith<
          _$SessionsWithSpeakerSponsorV4Impl>
      get copyWith => throw _privateConstructorUsedError;
}
