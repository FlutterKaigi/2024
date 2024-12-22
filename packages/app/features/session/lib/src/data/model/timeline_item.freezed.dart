// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimelineItem {
  String get title => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  SessionVenue? get venue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, DateTime startsAt, DateTime endsAt,
            SessionVenue? venue)
        event,
    required TResult Function(
            String id,
            String title,
            String description,
            DateTime startsAt,
            DateTime endsAt,
            bool isLightningTalk,
            SessionVenue venue,
            List<Speaker> speakers,
            List<SponsorV2> sponsors)
        session,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime startsAt, DateTime endsAt,
            SessionVenue? venue)?
        event,
    TResult? Function(
            String id,
            String title,
            String description,
            DateTime startsAt,
            DateTime endsAt,
            bool isLightningTalk,
            SessionVenue venue,
            List<Speaker> speakers,
            List<SponsorV2> sponsors)?
        session,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startsAt, DateTime endsAt,
            SessionVenue? venue)?
        event,
    TResult Function(
            String id,
            String title,
            String description,
            DateTime startsAt,
            DateTime endsAt,
            bool isLightningTalk,
            SessionVenue venue,
            List<Speaker> speakers,
            List<SponsorV2> sponsors)?
        session,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimelineItemEvent value) event,
    required TResult Function(TimelineItemSession value) session,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimelineItemEvent value)? event,
    TResult? Function(TimelineItemSession value)? session,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimelineItemEvent value)? event,
    TResult Function(TimelineItemSession value)? session,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of TimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimelineItemCopyWith<TimelineItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimelineItemCopyWith<$Res> {
  factory $TimelineItemCopyWith(
          TimelineItem value, $Res Function(TimelineItem) then) =
      _$TimelineItemCopyWithImpl<$Res, TimelineItem>;
  @useResult
  $Res call(
      {String title, DateTime startsAt, DateTime endsAt, SessionVenue venue});

  $SessionVenueCopyWith<$Res>? get venue;
}

/// @nodoc
class _$TimelineItemCopyWithImpl<$Res, $Val extends TimelineItem>
    implements $TimelineItemCopyWith<$Res> {
  _$TimelineItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? venue = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      venue: null == venue
          ? _value.venue!
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue,
    ) as $Val);
  }

  /// Create a copy of TimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionVenueCopyWith<$Res>? get venue {
    if (_value.venue == null) {
      return null;
    }

    return $SessionVenueCopyWith<$Res>(_value.venue!, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimelineItemEventImplCopyWith<$Res>
    implements $TimelineItemCopyWith<$Res> {
  factory _$$TimelineItemEventImplCopyWith(_$TimelineItemEventImpl value,
          $Res Function(_$TimelineItemEventImpl) then) =
      __$$TimelineItemEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title, DateTime startsAt, DateTime endsAt, SessionVenue? venue});

  @override
  $SessionVenueCopyWith<$Res>? get venue;
}

/// @nodoc
class __$$TimelineItemEventImplCopyWithImpl<$Res>
    extends _$TimelineItemCopyWithImpl<$Res, _$TimelineItemEventImpl>
    implements _$$TimelineItemEventImplCopyWith<$Res> {
  __$$TimelineItemEventImplCopyWithImpl(_$TimelineItemEventImpl _value,
      $Res Function(_$TimelineItemEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? venue = freezed,
  }) {
    return _then(_$TimelineItemEventImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: null == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      venue: freezed == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue?,
    ));
  }
}

/// @nodoc

class _$TimelineItemEventImpl implements TimelineItemEvent {
  const _$TimelineItemEventImpl(
      {required this.title,
      required this.startsAt,
      required this.endsAt,
      this.venue});

  @override
  final String title;
  @override
  final DateTime startsAt;
  @override
  final DateTime endsAt;
  @override
  final SessionVenue? venue;

  @override
  String toString() {
    return 'TimelineItem.event(title: $title, startsAt: $startsAt, endsAt: $endsAt, venue: $venue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineItemEventImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.venue, venue) || other.venue == venue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, startsAt, endsAt, venue);

  /// Create a copy of TimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineItemEventImplCopyWith<_$TimelineItemEventImpl> get copyWith =>
      __$$TimelineItemEventImplCopyWithImpl<_$TimelineItemEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, DateTime startsAt, DateTime endsAt,
            SessionVenue? venue)
        event,
    required TResult Function(
            String id,
            String title,
            String description,
            DateTime startsAt,
            DateTime endsAt,
            bool isLightningTalk,
            SessionVenue venue,
            List<Speaker> speakers,
            List<SponsorV2> sponsors)
        session,
  }) {
    return event(title, startsAt, endsAt, venue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime startsAt, DateTime endsAt,
            SessionVenue? venue)?
        event,
    TResult? Function(
            String id,
            String title,
            String description,
            DateTime startsAt,
            DateTime endsAt,
            bool isLightningTalk,
            SessionVenue venue,
            List<Speaker> speakers,
            List<SponsorV2> sponsors)?
        session,
  }) {
    return event?.call(title, startsAt, endsAt, venue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startsAt, DateTime endsAt,
            SessionVenue? venue)?
        event,
    TResult Function(
            String id,
            String title,
            String description,
            DateTime startsAt,
            DateTime endsAt,
            bool isLightningTalk,
            SessionVenue venue,
            List<Speaker> speakers,
            List<SponsorV2> sponsors)?
        session,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(title, startsAt, endsAt, venue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimelineItemEvent value) event,
    required TResult Function(TimelineItemSession value) session,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimelineItemEvent value)? event,
    TResult? Function(TimelineItemSession value)? session,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimelineItemEvent value)? event,
    TResult Function(TimelineItemSession value)? session,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class TimelineItemEvent implements TimelineItem {
  const factory TimelineItemEvent(
      {required final String title,
      required final DateTime startsAt,
      required final DateTime endsAt,
      final SessionVenue? venue}) = _$TimelineItemEventImpl;

  @override
  String get title;
  @override
  DateTime get startsAt;
  @override
  DateTime get endsAt;
  @override
  SessionVenue? get venue;

  /// Create a copy of TimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineItemEventImplCopyWith<_$TimelineItemEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimelineItemSessionImplCopyWith<$Res>
    implements $TimelineItemCopyWith<$Res> {
  factory _$$TimelineItemSessionImplCopyWith(_$TimelineItemSessionImpl value,
          $Res Function(_$TimelineItemSessionImpl) then) =
      __$$TimelineItemSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startsAt,
      DateTime endsAt,
      bool isLightningTalk,
      SessionVenue venue,
      List<Speaker> speakers,
      List<SponsorV2> sponsors});

  @override
  $SessionVenueCopyWith<$Res> get venue;
}

/// @nodoc
class __$$TimelineItemSessionImplCopyWithImpl<$Res>
    extends _$TimelineItemCopyWithImpl<$Res, _$TimelineItemSessionImpl>
    implements _$$TimelineItemSessionImplCopyWith<$Res> {
  __$$TimelineItemSessionImplCopyWithImpl(_$TimelineItemSessionImpl _value,
      $Res Function(_$TimelineItemSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimelineItem
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
    Object? venue = null,
    Object? speakers = null,
    Object? sponsors = null,
  }) {
    return _then(_$TimelineItemSessionImpl(
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
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as SessionVenue,
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

  /// Create a copy of TimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SessionVenueCopyWith<$Res> get venue {
    return $SessionVenueCopyWith<$Res>(_value.venue, (value) {
      return _then(_value.copyWith(venue: value));
    });
  }
}

/// @nodoc

class _$TimelineItemSessionImpl implements TimelineItemSession {
  const _$TimelineItemSessionImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.startsAt,
      required this.endsAt,
      required this.isLightningTalk,
      required this.venue,
      required final List<Speaker> speakers,
      required final List<SponsorV2> sponsors})
      : _speakers = speakers,
        _sponsors = sponsors;

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
  @override
  final SessionVenue venue;
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
    return 'TimelineItem.session(id: $id, title: $title, description: $description, startsAt: $startsAt, endsAt: $endsAt, isLightningTalk: $isLightningTalk, venue: $venue, speakers: $speakers, sponsors: $sponsors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimelineItemSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.isLightningTalk, isLightningTalk) ||
                other.isLightningTalk == isLightningTalk) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers) &&
            const DeepCollectionEquality().equals(other._sponsors, _sponsors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      startsAt,
      endsAt,
      isLightningTalk,
      venue,
      const DeepCollectionEquality().hash(_speakers),
      const DeepCollectionEquality().hash(_sponsors));

  /// Create a copy of TimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimelineItemSessionImplCopyWith<_$TimelineItemSessionImpl> get copyWith =>
      __$$TimelineItemSessionImplCopyWithImpl<_$TimelineItemSessionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, DateTime startsAt, DateTime endsAt,
            SessionVenue? venue)
        event,
    required TResult Function(
            String id,
            String title,
            String description,
            DateTime startsAt,
            DateTime endsAt,
            bool isLightningTalk,
            SessionVenue venue,
            List<Speaker> speakers,
            List<SponsorV2> sponsors)
        session,
  }) {
    return session(id, title, description, startsAt, endsAt, isLightningTalk,
        venue, speakers, sponsors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, DateTime startsAt, DateTime endsAt,
            SessionVenue? venue)?
        event,
    TResult? Function(
            String id,
            String title,
            String description,
            DateTime startsAt,
            DateTime endsAt,
            bool isLightningTalk,
            SessionVenue venue,
            List<Speaker> speakers,
            List<SponsorV2> sponsors)?
        session,
  }) {
    return session?.call(id, title, description, startsAt, endsAt,
        isLightningTalk, venue, speakers, sponsors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, DateTime startsAt, DateTime endsAt,
            SessionVenue? venue)?
        event,
    TResult Function(
            String id,
            String title,
            String description,
            DateTime startsAt,
            DateTime endsAt,
            bool isLightningTalk,
            SessionVenue venue,
            List<Speaker> speakers,
            List<SponsorV2> sponsors)?
        session,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(id, title, description, startsAt, endsAt, isLightningTalk,
          venue, speakers, sponsors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimelineItemEvent value) event,
    required TResult Function(TimelineItemSession value) session,
  }) {
    return session(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimelineItemEvent value)? event,
    TResult? Function(TimelineItemSession value)? session,
  }) {
    return session?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimelineItemEvent value)? event,
    TResult Function(TimelineItemSession value)? session,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(this);
    }
    return orElse();
  }
}

abstract class TimelineItemSession implements TimelineItem {
  const factory TimelineItemSession(
      {required final String id,
      required final String title,
      required final String description,
      required final DateTime startsAt,
      required final DateTime endsAt,
      required final bool isLightningTalk,
      required final SessionVenue venue,
      required final List<Speaker> speakers,
      required final List<SponsorV2> sponsors}) = _$TimelineItemSessionImpl;

  String get id;
  @override
  String get title;
  String get description;
  @override
  DateTime get startsAt;
  @override
  DateTime get endsAt;
  bool get isLightningTalk;
  @override
  SessionVenue get venue;
  List<Speaker> get speakers;
  List<SponsorV2> get sponsors;

  /// Create a copy of TimelineItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimelineItemSessionImplCopyWith<_$TimelineItemSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
