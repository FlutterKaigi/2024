// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_venues_with_sessions_v2_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionVenuesWithSessionsV2View _$SessionVenuesWithSessionsV2ViewFromJson(
    Map<String, dynamic> json) {
  return _SessionVenuesWithSessionsV2View.fromJson(json);
}

/// @nodoc
mixin _$SessionVenuesWithSessionsV2View {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SessionsWithSpeakerSponsorV2View> get sessions =>
      throw _privateConstructorUsedError;

  /// Serializes this SessionVenuesWithSessionsV2View to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionVenuesWithSessionsV2View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionVenuesWithSessionsV2ViewCopyWith<SessionVenuesWithSessionsV2View>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionVenuesWithSessionsV2ViewCopyWith<$Res> {
  factory $SessionVenuesWithSessionsV2ViewCopyWith(
          SessionVenuesWithSessionsV2View value,
          $Res Function(SessionVenuesWithSessionsV2View) then) =
      _$SessionVenuesWithSessionsV2ViewCopyWithImpl<$Res,
          SessionVenuesWithSessionsV2View>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<SessionsWithSpeakerSponsorV2View> sessions});
}

/// @nodoc
class _$SessionVenuesWithSessionsV2ViewCopyWithImpl<$Res,
        $Val extends SessionVenuesWithSessionsV2View>
    implements $SessionVenuesWithSessionsV2ViewCopyWith<$Res> {
  _$SessionVenuesWithSessionsV2ViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionVenuesWithSessionsV2View
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
              as List<SessionsWithSpeakerSponsorV2View>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionVenuesWithSessionsV2ViewImplCopyWith<$Res>
    implements $SessionVenuesWithSessionsV2ViewCopyWith<$Res> {
  factory _$$SessionVenuesWithSessionsV2ViewImplCopyWith(
          _$SessionVenuesWithSessionsV2ViewImpl value,
          $Res Function(_$SessionVenuesWithSessionsV2ViewImpl) then) =
      __$$SessionVenuesWithSessionsV2ViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<SessionsWithSpeakerSponsorV2View> sessions});
}

/// @nodoc
class __$$SessionVenuesWithSessionsV2ViewImplCopyWithImpl<$Res>
    extends _$SessionVenuesWithSessionsV2ViewCopyWithImpl<$Res,
        _$SessionVenuesWithSessionsV2ViewImpl>
    implements _$$SessionVenuesWithSessionsV2ViewImplCopyWith<$Res> {
  __$$SessionVenuesWithSessionsV2ViewImplCopyWithImpl(
      _$SessionVenuesWithSessionsV2ViewImpl _value,
      $Res Function(_$SessionVenuesWithSessionsV2ViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionVenuesWithSessionsV2View
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
  }) {
    return _then(_$SessionVenuesWithSessionsV2ViewImpl(
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
              as List<SessionsWithSpeakerSponsorV2View>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionVenuesWithSessionsV2ViewImpl
    implements _SessionVenuesWithSessionsV2View {
  const _$SessionVenuesWithSessionsV2ViewImpl(
      {required this.id,
      required this.name,
      required final List<SessionsWithSpeakerSponsorV2View> sessions})
      : _sessions = sessions;

  factory _$SessionVenuesWithSessionsV2ViewImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionVenuesWithSessionsV2ViewImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<SessionsWithSpeakerSponsorV2View> _sessions;
  @override
  List<SessionsWithSpeakerSponsorV2View> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SessionVenuesWithSessionsV2View(id: $id, name: $name, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionVenuesWithSessionsV2ViewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of SessionVenuesWithSessionsV2View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionVenuesWithSessionsV2ViewImplCopyWith<
          _$SessionVenuesWithSessionsV2ViewImpl>
      get copyWith => __$$SessionVenuesWithSessionsV2ViewImplCopyWithImpl<
          _$SessionVenuesWithSessionsV2ViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionVenuesWithSessionsV2ViewImplToJson(
      this,
    );
  }
}

abstract class _SessionVenuesWithSessionsV2View
    implements SessionVenuesWithSessionsV2View {
  const factory _SessionVenuesWithSessionsV2View(
          {required final String id,
          required final String name,
          required final List<SessionsWithSpeakerSponsorV2View> sessions}) =
      _$SessionVenuesWithSessionsV2ViewImpl;

  factory _SessionVenuesWithSessionsV2View.fromJson(Map<String, dynamic> json) =
      _$SessionVenuesWithSessionsV2ViewImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SessionsWithSpeakerSponsorV2View> get sessions;

  /// Create a copy of SessionVenuesWithSessionsV2View
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionVenuesWithSessionsV2ViewImplCopyWith<
          _$SessionVenuesWithSessionsV2ViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionsWithSpeakerSponsorV2View _$SessionsWithSpeakerSponsorV2ViewFromJson(
    Map<String, dynamic> json) {
  return _SessionsWithSpeakerSponsorV2View.fromJson(json);
}

/// @nodoc
mixin _$SessionsWithSpeakerSponsorV2View {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<SpeakerTable> get speakers => throw _privateConstructorUsedError;
  List<SponsorTable> get sponsors => throw _privateConstructorUsedError;

  /// Serializes this SessionsWithSpeakerSponsorV2View to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionsWithSpeakerSponsorV2View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionsWithSpeakerSponsorV2ViewCopyWith<SessionsWithSpeakerSponsorV2View>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsWithSpeakerSponsorV2ViewCopyWith<$Res> {
  factory $SessionsWithSpeakerSponsorV2ViewCopyWith(
          SessionsWithSpeakerSponsorV2View value,
          $Res Function(SessionsWithSpeakerSponsorV2View) then) =
      _$SessionsWithSpeakerSponsorV2ViewCopyWithImpl<$Res,
          SessionsWithSpeakerSponsorV2View>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<SpeakerTable> speakers,
      List<SponsorTable> sponsors});
}

/// @nodoc
class _$SessionsWithSpeakerSponsorV2ViewCopyWithImpl<$Res,
        $Val extends SessionsWithSpeakerSponsorV2View>
    implements $SessionsWithSpeakerSponsorV2ViewCopyWith<$Res> {
  _$SessionsWithSpeakerSponsorV2ViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionsWithSpeakerSponsorV2View
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
              as List<SpeakerTable>,
      sponsors: null == sponsors
          ? _value.sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<SponsorTable>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionsWithSpeakerSponsorV2ViewImplCopyWith<$Res>
    implements $SessionsWithSpeakerSponsorV2ViewCopyWith<$Res> {
  factory _$$SessionsWithSpeakerSponsorV2ViewImplCopyWith(
          _$SessionsWithSpeakerSponsorV2ViewImpl value,
          $Res Function(_$SessionsWithSpeakerSponsorV2ViewImpl) then) =
      __$$SessionsWithSpeakerSponsorV2ViewImplCopyWithImpl<$Res>;
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
      List<SponsorTable> sponsors});
}

/// @nodoc
class __$$SessionsWithSpeakerSponsorV2ViewImplCopyWithImpl<$Res>
    extends _$SessionsWithSpeakerSponsorV2ViewCopyWithImpl<$Res,
        _$SessionsWithSpeakerSponsorV2ViewImpl>
    implements _$$SessionsWithSpeakerSponsorV2ViewImplCopyWith<$Res> {
  __$$SessionsWithSpeakerSponsorV2ViewImplCopyWithImpl(
      _$SessionsWithSpeakerSponsorV2ViewImpl _value,
      $Res Function(_$SessionsWithSpeakerSponsorV2ViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionsWithSpeakerSponsorV2View
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
    return _then(_$SessionsWithSpeakerSponsorV2ViewImpl(
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
              as List<SponsorTable>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionsWithSpeakerSponsorV2ViewImpl
    implements _SessionsWithSpeakerSponsorV2View {
  const _$SessionsWithSpeakerSponsorV2ViewImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<SpeakerTable> speakers,
      required final List<SponsorTable> sponsors})
      : _speakers = speakers,
        _sponsors = sponsors;

  factory _$SessionsWithSpeakerSponsorV2ViewImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionsWithSpeakerSponsorV2ViewImplFromJson(json);

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

  final List<SponsorTable> _sponsors;
  @override
  List<SponsorTable> get sponsors {
    if (_sponsors is EqualUnmodifiableListView) return _sponsors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sponsors);
  }

  @override
  String toString() {
    return 'SessionsWithSpeakerSponsorV2View(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, sponsors: $sponsors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsWithSpeakerSponsorV2ViewImpl &&
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

  /// Create a copy of SessionsWithSpeakerSponsorV2View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsWithSpeakerSponsorV2ViewImplCopyWith<
          _$SessionsWithSpeakerSponsorV2ViewImpl>
      get copyWith => __$$SessionsWithSpeakerSponsorV2ViewImplCopyWithImpl<
          _$SessionsWithSpeakerSponsorV2ViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionsWithSpeakerSponsorV2ViewImplToJson(
      this,
    );
  }
}

abstract class _SessionsWithSpeakerSponsorV2View
    implements SessionsWithSpeakerSponsorV2View {
  const factory _SessionsWithSpeakerSponsorV2View(
          {required final String id,
          required final String title,
          required final String description,
          required final DateTime startsAt,
          required final DateTime endsAt,
          required final bool isLightningTalk,
          required final List<SpeakerTable> speakers,
          required final List<SponsorTable> sponsors}) =
      _$SessionsWithSpeakerSponsorV2ViewImpl;

  factory _SessionsWithSpeakerSponsorV2View.fromJson(
          Map<String, dynamic> json) =
      _$SessionsWithSpeakerSponsorV2ViewImpl.fromJson;

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
  List<SponsorTable> get sponsors;

  /// Create a copy of SessionsWithSpeakerSponsorV2View
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionsWithSpeakerSponsorV2ViewImplCopyWith<
          _$SessionsWithSpeakerSponsorV2ViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionVenuesWithSessionsV2 _$SessionVenuesWithSessionsV2FromJson(
    Map<String, dynamic> json) {
  return _SessionVenuesWithSessionsV2.fromJson(json);
}

/// @nodoc
mixin _$SessionVenuesWithSessionsV2 {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SessionsWithSpeakerSponsorV2> get sessions =>
      throw _privateConstructorUsedError;

  /// Serializes this SessionVenuesWithSessionsV2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionVenuesWithSessionsV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionVenuesWithSessionsV2CopyWith<SessionVenuesWithSessionsV2>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionVenuesWithSessionsV2CopyWith<$Res> {
  factory $SessionVenuesWithSessionsV2CopyWith(
          SessionVenuesWithSessionsV2 value,
          $Res Function(SessionVenuesWithSessionsV2) then) =
      _$SessionVenuesWithSessionsV2CopyWithImpl<$Res,
          SessionVenuesWithSessionsV2>;
  @useResult
  $Res call(
      {String id, String name, List<SessionsWithSpeakerSponsorV2> sessions});
}

/// @nodoc
class _$SessionVenuesWithSessionsV2CopyWithImpl<$Res,
        $Val extends SessionVenuesWithSessionsV2>
    implements $SessionVenuesWithSessionsV2CopyWith<$Res> {
  _$SessionVenuesWithSessionsV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionVenuesWithSessionsV2
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
              as List<SessionsWithSpeakerSponsorV2>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionVenuesWithSessionsV2ImplCopyWith<$Res>
    implements $SessionVenuesWithSessionsV2CopyWith<$Res> {
  factory _$$SessionVenuesWithSessionsV2ImplCopyWith(
          _$SessionVenuesWithSessionsV2Impl value,
          $Res Function(_$SessionVenuesWithSessionsV2Impl) then) =
      __$$SessionVenuesWithSessionsV2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, List<SessionsWithSpeakerSponsorV2> sessions});
}

/// @nodoc
class __$$SessionVenuesWithSessionsV2ImplCopyWithImpl<$Res>
    extends _$SessionVenuesWithSessionsV2CopyWithImpl<$Res,
        _$SessionVenuesWithSessionsV2Impl>
    implements _$$SessionVenuesWithSessionsV2ImplCopyWith<$Res> {
  __$$SessionVenuesWithSessionsV2ImplCopyWithImpl(
      _$SessionVenuesWithSessionsV2Impl _value,
      $Res Function(_$SessionVenuesWithSessionsV2Impl) _then)
      : super(_value, _then);

  /// Create a copy of SessionVenuesWithSessionsV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
  }) {
    return _then(_$SessionVenuesWithSessionsV2Impl(
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
              as List<SessionsWithSpeakerSponsorV2>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionVenuesWithSessionsV2Impl
    implements _SessionVenuesWithSessionsV2 {
  const _$SessionVenuesWithSessionsV2Impl(
      {required this.id,
      required this.name,
      required final List<SessionsWithSpeakerSponsorV2> sessions})
      : _sessions = sessions;

  factory _$SessionVenuesWithSessionsV2Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionVenuesWithSessionsV2ImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<SessionsWithSpeakerSponsorV2> _sessions;
  @override
  List<SessionsWithSpeakerSponsorV2> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SessionVenuesWithSessionsV2(id: $id, name: $name, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionVenuesWithSessionsV2Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of SessionVenuesWithSessionsV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionVenuesWithSessionsV2ImplCopyWith<_$SessionVenuesWithSessionsV2Impl>
      get copyWith => __$$SessionVenuesWithSessionsV2ImplCopyWithImpl<
          _$SessionVenuesWithSessionsV2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionVenuesWithSessionsV2ImplToJson(
      this,
    );
  }
}

abstract class _SessionVenuesWithSessionsV2
    implements SessionVenuesWithSessionsV2 {
  const factory _SessionVenuesWithSessionsV2(
          {required final String id,
          required final String name,
          required final List<SessionsWithSpeakerSponsorV2> sessions}) =
      _$SessionVenuesWithSessionsV2Impl;

  factory _SessionVenuesWithSessionsV2.fromJson(Map<String, dynamic> json) =
      _$SessionVenuesWithSessionsV2Impl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SessionsWithSpeakerSponsorV2> get sessions;

  /// Create a copy of SessionVenuesWithSessionsV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionVenuesWithSessionsV2ImplCopyWith<_$SessionVenuesWithSessionsV2Impl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionsWithSpeakerSponsorV2 _$SessionsWithSpeakerSponsorV2FromJson(
    Map<String, dynamic> json) {
  return _SessionsWithSpeakerSponsorV2.fromJson(json);
}

/// @nodoc
mixin _$SessionsWithSpeakerSponsorV2 {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<Speaker> get speakers => throw _privateConstructorUsedError;
  List<Sponsor> get sponsors => throw _privateConstructorUsedError;

  /// Serializes this SessionsWithSpeakerSponsorV2 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionsWithSpeakerSponsorV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionsWithSpeakerSponsorV2CopyWith<SessionsWithSpeakerSponsorV2>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsWithSpeakerSponsorV2CopyWith<$Res> {
  factory $SessionsWithSpeakerSponsorV2CopyWith(
          SessionsWithSpeakerSponsorV2 value,
          $Res Function(SessionsWithSpeakerSponsorV2) then) =
      _$SessionsWithSpeakerSponsorV2CopyWithImpl<$Res,
          SessionsWithSpeakerSponsorV2>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<Speaker> speakers,
      List<Sponsor> sponsors});
}

/// @nodoc
class _$SessionsWithSpeakerSponsorV2CopyWithImpl<$Res,
        $Val extends SessionsWithSpeakerSponsorV2>
    implements $SessionsWithSpeakerSponsorV2CopyWith<$Res> {
  _$SessionsWithSpeakerSponsorV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionsWithSpeakerSponsorV2
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
              as List<Speaker>,
      sponsors: null == sponsors
          ? _value.sponsors
          : sponsors // ignore: cast_nullable_to_non_nullable
              as List<Sponsor>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionsWithSpeakerSponsorV2ImplCopyWith<$Res>
    implements $SessionsWithSpeakerSponsorV2CopyWith<$Res> {
  factory _$$SessionsWithSpeakerSponsorV2ImplCopyWith(
          _$SessionsWithSpeakerSponsorV2Impl value,
          $Res Function(_$SessionsWithSpeakerSponsorV2Impl) then) =
      __$$SessionsWithSpeakerSponsorV2ImplCopyWithImpl<$Res>;
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
      List<Sponsor> sponsors});
}

/// @nodoc
class __$$SessionsWithSpeakerSponsorV2ImplCopyWithImpl<$Res>
    extends _$SessionsWithSpeakerSponsorV2CopyWithImpl<$Res,
        _$SessionsWithSpeakerSponsorV2Impl>
    implements _$$SessionsWithSpeakerSponsorV2ImplCopyWith<$Res> {
  __$$SessionsWithSpeakerSponsorV2ImplCopyWithImpl(
      _$SessionsWithSpeakerSponsorV2Impl _value,
      $Res Function(_$SessionsWithSpeakerSponsorV2Impl) _then)
      : super(_value, _then);

  /// Create a copy of SessionsWithSpeakerSponsorV2
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
    return _then(_$SessionsWithSpeakerSponsorV2Impl(
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
              as List<Sponsor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionsWithSpeakerSponsorV2Impl
    implements _SessionsWithSpeakerSponsorV2 {
  const _$SessionsWithSpeakerSponsorV2Impl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<Speaker> speakers,
      required final List<Sponsor> sponsors})
      : _speakers = speakers,
        _sponsors = sponsors;

  factory _$SessionsWithSpeakerSponsorV2Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionsWithSpeakerSponsorV2ImplFromJson(json);

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

  final List<Sponsor> _sponsors;
  @override
  List<Sponsor> get sponsors {
    if (_sponsors is EqualUnmodifiableListView) return _sponsors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sponsors);
  }

  @override
  String toString() {
    return 'SessionsWithSpeakerSponsorV2(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, sponsors: $sponsors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsWithSpeakerSponsorV2Impl &&
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

  /// Create a copy of SessionsWithSpeakerSponsorV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsWithSpeakerSponsorV2ImplCopyWith<
          _$SessionsWithSpeakerSponsorV2Impl>
      get copyWith => __$$SessionsWithSpeakerSponsorV2ImplCopyWithImpl<
          _$SessionsWithSpeakerSponsorV2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionsWithSpeakerSponsorV2ImplToJson(
      this,
    );
  }
}

abstract class _SessionsWithSpeakerSponsorV2
    implements SessionsWithSpeakerSponsorV2 {
  const factory _SessionsWithSpeakerSponsorV2(
          {required final String id,
          required final String title,
          required final String description,
          required final DateTime startsAt,
          required final DateTime endsAt,
          required final bool isLightningTalk,
          required final List<Speaker> speakers,
          required final List<Sponsor> sponsors}) =
      _$SessionsWithSpeakerSponsorV2Impl;

  factory _SessionsWithSpeakerSponsorV2.fromJson(Map<String, dynamic> json) =
      _$SessionsWithSpeakerSponsorV2Impl.fromJson;

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
  List<Sponsor> get sponsors;

  /// Create a copy of SessionsWithSpeakerSponsorV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionsWithSpeakerSponsorV2ImplCopyWith<
          _$SessionsWithSpeakerSponsorV2Impl>
      get copyWith => throw _privateConstructorUsedError;
}
