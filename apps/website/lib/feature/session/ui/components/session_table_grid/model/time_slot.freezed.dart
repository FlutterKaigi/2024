// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeSlot {
  DateTime get time => throw _privateConstructorUsedError;
  List<
      ({
        SessionsWithSpeakerSponsorV3 session,
        SessionVenuesWithSessionsV3 sessionVenue
      })> get sessions => throw _privateConstructorUsedError;
  SpecialSession? get specialSession => throw _privateConstructorUsedError;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeSlotCopyWith<TimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotCopyWith<$Res> {
  factory $TimeSlotCopyWith(TimeSlot value, $Res Function(TimeSlot) then) =
      _$TimeSlotCopyWithImpl<$Res, TimeSlot>;
  @useResult
  $Res call(
      {DateTime time,
      List<
              ({
                SessionsWithSpeakerSponsorV3 session,
                SessionVenuesWithSessionsV3 sessionVenue
              })>
          sessions,
      SpecialSession? specialSession});

  $SpecialSessionCopyWith<$Res>? get specialSession;
}

/// @nodoc
class _$TimeSlotCopyWithImpl<$Res, $Val extends TimeSlot>
    implements $TimeSlotCopyWith<$Res> {
  _$TimeSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? sessions = null,
    Object? specialSession = freezed,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<
                  ({
                    SessionsWithSpeakerSponsorV3 session,
                    SessionVenuesWithSessionsV3 sessionVenue
                  })>,
      specialSession: freezed == specialSession
          ? _value.specialSession
          : specialSession // ignore: cast_nullable_to_non_nullable
              as SpecialSession?,
    ) as $Val);
  }

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpecialSessionCopyWith<$Res>? get specialSession {
    if (_value.specialSession == null) {
      return null;
    }

    return $SpecialSessionCopyWith<$Res>(_value.specialSession!, (value) {
      return _then(_value.copyWith(specialSession: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeSlotImplCopyWith<$Res>
    implements $TimeSlotCopyWith<$Res> {
  factory _$$TimeSlotImplCopyWith(
          _$TimeSlotImpl value, $Res Function(_$TimeSlotImpl) then) =
      __$$TimeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime time,
      List<
              ({
                SessionsWithSpeakerSponsorV3 session,
                SessionVenuesWithSessionsV3 sessionVenue
              })>
          sessions,
      SpecialSession? specialSession});

  @override
  $SpecialSessionCopyWith<$Res>? get specialSession;
}

/// @nodoc
class __$$TimeSlotImplCopyWithImpl<$Res>
    extends _$TimeSlotCopyWithImpl<$Res, _$TimeSlotImpl>
    implements _$$TimeSlotImplCopyWith<$Res> {
  __$$TimeSlotImplCopyWithImpl(
      _$TimeSlotImpl _value, $Res Function(_$TimeSlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? sessions = null,
    Object? specialSession = freezed,
  }) {
    return _then(_$TimeSlotImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<
                  ({
                    SessionsWithSpeakerSponsorV3 session,
                    SessionVenuesWithSessionsV3 sessionVenue
                  })>,
      specialSession: freezed == specialSession
          ? _value.specialSession
          : specialSession // ignore: cast_nullable_to_non_nullable
              as SpecialSession?,
    ));
  }
}

/// @nodoc

class _$TimeSlotImpl implements _TimeSlot {
  const _$TimeSlotImpl(
      {required this.time,
      required final List<
              ({
                SessionsWithSpeakerSponsorV3 session,
                SessionVenuesWithSessionsV3 sessionVenue
              })>
          sessions,
      this.specialSession})
      : _sessions = sessions;

  @override
  final DateTime time;
  final List<
      ({
        SessionsWithSpeakerSponsorV3 session,
        SessionVenuesWithSessionsV3 sessionVenue
      })> _sessions;
  @override
  List<
      ({
        SessionsWithSpeakerSponsorV3 session,
        SessionVenuesWithSessionsV3 sessionVenue
      })> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  final SpecialSession? specialSession;

  @override
  String toString() {
    return 'TimeSlot(time: $time, sessions: $sessions, specialSession: $specialSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotImpl &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            (identical(other.specialSession, specialSession) ||
                other.specialSession == specialSession));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time,
      const DeepCollectionEquality().hash(_sessions), specialSession);

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotImplCopyWith<_$TimeSlotImpl> get copyWith =>
      __$$TimeSlotImplCopyWithImpl<_$TimeSlotImpl>(this, _$identity);
}

abstract class _TimeSlot implements TimeSlot {
  const factory _TimeSlot(
      {required final DateTime time,
      required final List<
              ({
                SessionsWithSpeakerSponsorV3 session,
                SessionVenuesWithSessionsV3 sessionVenue
              })>
          sessions,
      final SpecialSession? specialSession}) = _$TimeSlotImpl;

  @override
  DateTime get time;
  @override
  List<
      ({
        SessionsWithSpeakerSponsorV3 session,
        SessionVenuesWithSessionsV3 sessionVenue
      })> get sessions;
  @override
  SpecialSession? get specialSession;

  /// Create a copy of TimeSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeSlotImplCopyWith<_$TimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
