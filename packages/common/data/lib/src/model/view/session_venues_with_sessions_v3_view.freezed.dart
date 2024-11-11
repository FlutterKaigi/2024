// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_venues_with_sessions_v3_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionVenuesWithSessionsV3View _$SessionVenuesWithSessionsV3ViewFromJson(
    Map<String, dynamic> json) {
  return _SessionVenuesWithSessionsV3View.fromJson(json);
}

/// @nodoc
mixin _$SessionVenuesWithSessionsV3View {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SessionsWithSpeakerSponsorV3View> get sessions =>
      throw _privateConstructorUsedError;

  /// Serializes this SessionVenuesWithSessionsV3View to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionVenuesWithSessionsV3View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionVenuesWithSessionsV3ViewCopyWith<SessionVenuesWithSessionsV3View>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionVenuesWithSessionsV3ViewCopyWith<$Res> {
  factory $SessionVenuesWithSessionsV3ViewCopyWith(
          SessionVenuesWithSessionsV3View value,
          $Res Function(SessionVenuesWithSessionsV3View) then) =
      _$SessionVenuesWithSessionsV3ViewCopyWithImpl<$Res,
          SessionVenuesWithSessionsV3View>;
  @useResult
  $Res call(
      {String id,
      String name,
      List<SessionsWithSpeakerSponsorV3View> sessions});
}

/// @nodoc
class _$SessionVenuesWithSessionsV3ViewCopyWithImpl<$Res,
        $Val extends SessionVenuesWithSessionsV3View>
    implements $SessionVenuesWithSessionsV3ViewCopyWith<$Res> {
  _$SessionVenuesWithSessionsV3ViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionVenuesWithSessionsV3View
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
              as List<SessionsWithSpeakerSponsorV3View>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionVenuesWithSessionsV3ViewImplCopyWith<$Res>
    implements $SessionVenuesWithSessionsV3ViewCopyWith<$Res> {
  factory _$$SessionVenuesWithSessionsV3ViewImplCopyWith(
          _$SessionVenuesWithSessionsV3ViewImpl value,
          $Res Function(_$SessionVenuesWithSessionsV3ViewImpl) then) =
      __$$SessionVenuesWithSessionsV3ViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      List<SessionsWithSpeakerSponsorV3View> sessions});
}

/// @nodoc
class __$$SessionVenuesWithSessionsV3ViewImplCopyWithImpl<$Res>
    extends _$SessionVenuesWithSessionsV3ViewCopyWithImpl<$Res,
        _$SessionVenuesWithSessionsV3ViewImpl>
    implements _$$SessionVenuesWithSessionsV3ViewImplCopyWith<$Res> {
  __$$SessionVenuesWithSessionsV3ViewImplCopyWithImpl(
      _$SessionVenuesWithSessionsV3ViewImpl _value,
      $Res Function(_$SessionVenuesWithSessionsV3ViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionVenuesWithSessionsV3View
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
  }) {
    return _then(_$SessionVenuesWithSessionsV3ViewImpl(
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
              as List<SessionsWithSpeakerSponsorV3View>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionVenuesWithSessionsV3ViewImpl
    implements _SessionVenuesWithSessionsV3View {
  const _$SessionVenuesWithSessionsV3ViewImpl(
      {required this.id,
      required this.name,
      required final List<SessionsWithSpeakerSponsorV3View> sessions})
      : _sessions = sessions;

  factory _$SessionVenuesWithSessionsV3ViewImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionVenuesWithSessionsV3ViewImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<SessionsWithSpeakerSponsorV3View> _sessions;
  @override
  List<SessionsWithSpeakerSponsorV3View> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SessionVenuesWithSessionsV3View(id: $id, name: $name, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionVenuesWithSessionsV3ViewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of SessionVenuesWithSessionsV3View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionVenuesWithSessionsV3ViewImplCopyWith<
          _$SessionVenuesWithSessionsV3ViewImpl>
      get copyWith => __$$SessionVenuesWithSessionsV3ViewImplCopyWithImpl<
          _$SessionVenuesWithSessionsV3ViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionVenuesWithSessionsV3ViewImplToJson(
      this,
    );
  }
}

abstract class _SessionVenuesWithSessionsV3View
    implements SessionVenuesWithSessionsV3View {
  const factory _SessionVenuesWithSessionsV3View(
          {required final String id,
          required final String name,
          required final List<SessionsWithSpeakerSponsorV3View> sessions}) =
      _$SessionVenuesWithSessionsV3ViewImpl;

  factory _SessionVenuesWithSessionsV3View.fromJson(Map<String, dynamic> json) =
      _$SessionVenuesWithSessionsV3ViewImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SessionsWithSpeakerSponsorV3View> get sessions;

  /// Create a copy of SessionVenuesWithSessionsV3View
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionVenuesWithSessionsV3ViewImplCopyWith<
          _$SessionVenuesWithSessionsV3ViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionsWithSpeakerSponsorV3View _$SessionsWithSpeakerSponsorV3ViewFromJson(
    Map<String, dynamic> json) {
  return _SessionsWithSpeakerSponsorV3View.fromJson(json);
}

/// @nodoc
mixin _$SessionsWithSpeakerSponsorV3View {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<SpeakerTable> get speakers => throw _privateConstructorUsedError;
  List<SponsorV2Table> get sponsors => throw _privateConstructorUsedError;

  /// Serializes this SessionsWithSpeakerSponsorV3View to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionsWithSpeakerSponsorV3View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionsWithSpeakerSponsorV3ViewCopyWith<SessionsWithSpeakerSponsorV3View>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsWithSpeakerSponsorV3ViewCopyWith<$Res> {
  factory $SessionsWithSpeakerSponsorV3ViewCopyWith(
          SessionsWithSpeakerSponsorV3View value,
          $Res Function(SessionsWithSpeakerSponsorV3View) then) =
      _$SessionsWithSpeakerSponsorV3ViewCopyWithImpl<$Res,
          SessionsWithSpeakerSponsorV3View>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<SpeakerTable> speakers,
      List<SponsorV2Table> sponsors});
}

/// @nodoc
class _$SessionsWithSpeakerSponsorV3ViewCopyWithImpl<$Res,
        $Val extends SessionsWithSpeakerSponsorV3View>
    implements $SessionsWithSpeakerSponsorV3ViewCopyWith<$Res> {
  _$SessionsWithSpeakerSponsorV3ViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionsWithSpeakerSponsorV3View
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
              as List<SponsorV2Table>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionsWithSpeakerSponsorV3ViewImplCopyWith<$Res>
    implements $SessionsWithSpeakerSponsorV3ViewCopyWith<$Res> {
  factory _$$SessionsWithSpeakerSponsorV3ViewImplCopyWith(
          _$SessionsWithSpeakerSponsorV3ViewImpl value,
          $Res Function(_$SessionsWithSpeakerSponsorV3ViewImpl) then) =
      __$$SessionsWithSpeakerSponsorV3ViewImplCopyWithImpl<$Res>;
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
      List<SponsorV2Table> sponsors});
}

/// @nodoc
class __$$SessionsWithSpeakerSponsorV3ViewImplCopyWithImpl<$Res>
    extends _$SessionsWithSpeakerSponsorV3ViewCopyWithImpl<$Res,
        _$SessionsWithSpeakerSponsorV3ViewImpl>
    implements _$$SessionsWithSpeakerSponsorV3ViewImplCopyWith<$Res> {
  __$$SessionsWithSpeakerSponsorV3ViewImplCopyWithImpl(
      _$SessionsWithSpeakerSponsorV3ViewImpl _value,
      $Res Function(_$SessionsWithSpeakerSponsorV3ViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionsWithSpeakerSponsorV3View
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
    return _then(_$SessionsWithSpeakerSponsorV3ViewImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionsWithSpeakerSponsorV3ViewImpl
    implements _SessionsWithSpeakerSponsorV3View {
  const _$SessionsWithSpeakerSponsorV3ViewImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<SpeakerTable> speakers,
      required final List<SponsorV2Table> sponsors})
      : _speakers = speakers,
        _sponsors = sponsors;

  factory _$SessionsWithSpeakerSponsorV3ViewImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionsWithSpeakerSponsorV3ViewImplFromJson(json);

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
  String toString() {
    return 'SessionsWithSpeakerSponsorV3View(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, sponsors: $sponsors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsWithSpeakerSponsorV3ViewImpl &&
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

  /// Create a copy of SessionsWithSpeakerSponsorV3View
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsWithSpeakerSponsorV3ViewImplCopyWith<
          _$SessionsWithSpeakerSponsorV3ViewImpl>
      get copyWith => __$$SessionsWithSpeakerSponsorV3ViewImplCopyWithImpl<
          _$SessionsWithSpeakerSponsorV3ViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionsWithSpeakerSponsorV3ViewImplToJson(
      this,
    );
  }
}

abstract class _SessionsWithSpeakerSponsorV3View
    implements SessionsWithSpeakerSponsorV3View {
  const factory _SessionsWithSpeakerSponsorV3View(
          {required final String id,
          required final String title,
          required final String description,
          required final DateTime startsAt,
          required final DateTime endsAt,
          required final bool isLightningTalk,
          required final List<SpeakerTable> speakers,
          required final List<SponsorV2Table> sponsors}) =
      _$SessionsWithSpeakerSponsorV3ViewImpl;

  factory _SessionsWithSpeakerSponsorV3View.fromJson(
          Map<String, dynamic> json) =
      _$SessionsWithSpeakerSponsorV3ViewImpl.fromJson;

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

  /// Create a copy of SessionsWithSpeakerSponsorV3View
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionsWithSpeakerSponsorV3ViewImplCopyWith<
          _$SessionsWithSpeakerSponsorV3ViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionVenuesWithSessionsV3 _$SessionVenuesWithSessionsV3FromJson(
    Map<String, dynamic> json) {
  return _SessionVenuesWithSessionsV3.fromJson(json);
}

/// @nodoc
mixin _$SessionVenuesWithSessionsV3 {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SessionsWithSpeakerSponsorV3> get sessions =>
      throw _privateConstructorUsedError;

  /// Serializes this SessionVenuesWithSessionsV3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionVenuesWithSessionsV3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionVenuesWithSessionsV3CopyWith<SessionVenuesWithSessionsV3>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionVenuesWithSessionsV3CopyWith<$Res> {
  factory $SessionVenuesWithSessionsV3CopyWith(
          SessionVenuesWithSessionsV3 value,
          $Res Function(SessionVenuesWithSessionsV3) then) =
      _$SessionVenuesWithSessionsV3CopyWithImpl<$Res,
          SessionVenuesWithSessionsV3>;
  @useResult
  $Res call(
      {String id, String name, List<SessionsWithSpeakerSponsorV3> sessions});
}

/// @nodoc
class _$SessionVenuesWithSessionsV3CopyWithImpl<$Res,
        $Val extends SessionVenuesWithSessionsV3>
    implements $SessionVenuesWithSessionsV3CopyWith<$Res> {
  _$SessionVenuesWithSessionsV3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionVenuesWithSessionsV3
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
              as List<SessionsWithSpeakerSponsorV3>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionVenuesWithSessionsV3ImplCopyWith<$Res>
    implements $SessionVenuesWithSessionsV3CopyWith<$Res> {
  factory _$$SessionVenuesWithSessionsV3ImplCopyWith(
          _$SessionVenuesWithSessionsV3Impl value,
          $Res Function(_$SessionVenuesWithSessionsV3Impl) then) =
      __$$SessionVenuesWithSessionsV3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, List<SessionsWithSpeakerSponsorV3> sessions});
}

/// @nodoc
class __$$SessionVenuesWithSessionsV3ImplCopyWithImpl<$Res>
    extends _$SessionVenuesWithSessionsV3CopyWithImpl<$Res,
        _$SessionVenuesWithSessionsV3Impl>
    implements _$$SessionVenuesWithSessionsV3ImplCopyWith<$Res> {
  __$$SessionVenuesWithSessionsV3ImplCopyWithImpl(
      _$SessionVenuesWithSessionsV3Impl _value,
      $Res Function(_$SessionVenuesWithSessionsV3Impl) _then)
      : super(_value, _then);

  /// Create a copy of SessionVenuesWithSessionsV3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? sessions = null,
  }) {
    return _then(_$SessionVenuesWithSessionsV3Impl(
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
              as List<SessionsWithSpeakerSponsorV3>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionVenuesWithSessionsV3Impl
    implements _SessionVenuesWithSessionsV3 {
  const _$SessionVenuesWithSessionsV3Impl(
      {required this.id,
      required this.name,
      required final List<SessionsWithSpeakerSponsorV3> sessions})
      : _sessions = sessions;

  factory _$SessionVenuesWithSessionsV3Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionVenuesWithSessionsV3ImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<SessionsWithSpeakerSponsorV3> _sessions;
  @override
  List<SessionsWithSpeakerSponsorV3> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  String toString() {
    return 'SessionVenuesWithSessionsV3(id: $id, name: $name, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionVenuesWithSessionsV3Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of SessionVenuesWithSessionsV3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionVenuesWithSessionsV3ImplCopyWith<_$SessionVenuesWithSessionsV3Impl>
      get copyWith => __$$SessionVenuesWithSessionsV3ImplCopyWithImpl<
          _$SessionVenuesWithSessionsV3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionVenuesWithSessionsV3ImplToJson(
      this,
    );
  }
}

abstract class _SessionVenuesWithSessionsV3
    implements SessionVenuesWithSessionsV3 {
  const factory _SessionVenuesWithSessionsV3(
          {required final String id,
          required final String name,
          required final List<SessionsWithSpeakerSponsorV3> sessions}) =
      _$SessionVenuesWithSessionsV3Impl;

  factory _SessionVenuesWithSessionsV3.fromJson(Map<String, dynamic> json) =
      _$SessionVenuesWithSessionsV3Impl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<SessionsWithSpeakerSponsorV3> get sessions;

  /// Create a copy of SessionVenuesWithSessionsV3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionVenuesWithSessionsV3ImplCopyWith<_$SessionVenuesWithSessionsV3Impl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionsWithSpeakerSponsorV3 _$SessionsWithSpeakerSponsorV3FromJson(
    Map<String, dynamic> json) {
  return _SessionsWithSpeakerSponsorV3.fromJson(json);
}

/// @nodoc
mixin _$SessionsWithSpeakerSponsorV3 {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  bool get isLightningTalk => throw _privateConstructorUsedError;
  List<Speaker> get speakers => throw _privateConstructorUsedError;
  List<SponsorV2> get sponsors => throw _privateConstructorUsedError;

  /// Serializes this SessionsWithSpeakerSponsorV3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionsWithSpeakerSponsorV3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionsWithSpeakerSponsorV3CopyWith<SessionsWithSpeakerSponsorV3>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionsWithSpeakerSponsorV3CopyWith<$Res> {
  factory $SessionsWithSpeakerSponsorV3CopyWith(
          SessionsWithSpeakerSponsorV3 value,
          $Res Function(SessionsWithSpeakerSponsorV3) then) =
      _$SessionsWithSpeakerSponsorV3CopyWithImpl<$Res,
          SessionsWithSpeakerSponsorV3>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      List<Speaker> speakers,
      List<SponsorV2> sponsors});
}

/// @nodoc
class _$SessionsWithSpeakerSponsorV3CopyWithImpl<$Res,
        $Val extends SessionsWithSpeakerSponsorV3>
    implements $SessionsWithSpeakerSponsorV3CopyWith<$Res> {
  _$SessionsWithSpeakerSponsorV3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionsWithSpeakerSponsorV3
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
              as List<SponsorV2>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionsWithSpeakerSponsorV3ImplCopyWith<$Res>
    implements $SessionsWithSpeakerSponsorV3CopyWith<$Res> {
  factory _$$SessionsWithSpeakerSponsorV3ImplCopyWith(
          _$SessionsWithSpeakerSponsorV3Impl value,
          $Res Function(_$SessionsWithSpeakerSponsorV3Impl) then) =
      __$$SessionsWithSpeakerSponsorV3ImplCopyWithImpl<$Res>;
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
      List<SponsorV2> sponsors});
}

/// @nodoc
class __$$SessionsWithSpeakerSponsorV3ImplCopyWithImpl<$Res>
    extends _$SessionsWithSpeakerSponsorV3CopyWithImpl<$Res,
        _$SessionsWithSpeakerSponsorV3Impl>
    implements _$$SessionsWithSpeakerSponsorV3ImplCopyWith<$Res> {
  __$$SessionsWithSpeakerSponsorV3ImplCopyWithImpl(
      _$SessionsWithSpeakerSponsorV3Impl _value,
      $Res Function(_$SessionsWithSpeakerSponsorV3Impl) _then)
      : super(_value, _then);

  /// Create a copy of SessionsWithSpeakerSponsorV3
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
    return _then(_$SessionsWithSpeakerSponsorV3Impl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionsWithSpeakerSponsorV3Impl
    implements _SessionsWithSpeakerSponsorV3 {
  const _$SessionsWithSpeakerSponsorV3Impl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required final List<Speaker> speakers,
      required final List<SponsorV2> sponsors})
      : _speakers = speakers,
        _sponsors = sponsors;

  factory _$SessionsWithSpeakerSponsorV3Impl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionsWithSpeakerSponsorV3ImplFromJson(json);

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
  String toString() {
    return 'SessionsWithSpeakerSponsorV3(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, speakers: $speakers, sponsors: $sponsors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionsWithSpeakerSponsorV3Impl &&
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

  /// Create a copy of SessionsWithSpeakerSponsorV3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionsWithSpeakerSponsorV3ImplCopyWith<
          _$SessionsWithSpeakerSponsorV3Impl>
      get copyWith => __$$SessionsWithSpeakerSponsorV3ImplCopyWithImpl<
          _$SessionsWithSpeakerSponsorV3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionsWithSpeakerSponsorV3ImplToJson(
      this,
    );
  }
}

abstract class _SessionsWithSpeakerSponsorV3
    implements SessionsWithSpeakerSponsorV3 {
  const factory _SessionsWithSpeakerSponsorV3(
          {required final String id,
          required final String title,
          required final String description,
          required final DateTime startsAt,
          required final DateTime endsAt,
          required final bool isLightningTalk,
          required final List<Speaker> speakers,
          required final List<SponsorV2> sponsors}) =
      _$SessionsWithSpeakerSponsorV3Impl;

  factory _SessionsWithSpeakerSponsorV3.fromJson(Map<String, dynamic> json) =
      _$SessionsWithSpeakerSponsorV3Impl.fromJson;

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

  /// Create a copy of SessionsWithSpeakerSponsorV3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionsWithSpeakerSponsorV3ImplCopyWith<
          _$SessionsWithSpeakerSponsorV3Impl>
      get copyWith => throw _privateConstructorUsedError;
}
