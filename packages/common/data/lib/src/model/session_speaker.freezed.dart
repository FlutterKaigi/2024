// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_speaker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionSpeaker _$SessionSpeakerFromJson(Map<String, dynamic> json) {
  return _SessionSpeaker.fromJson(json);
}

/// @nodoc
mixin _$SessionSpeaker {
  String get sessionId => throw _privateConstructorUsedError;
  String get speakerId => throw _privateConstructorUsedError;

  /// Serializes this SessionSpeaker to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionSpeaker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionSpeakerCopyWith<SessionSpeaker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionSpeakerCopyWith<$Res> {
  factory $SessionSpeakerCopyWith(
          SessionSpeaker value, $Res Function(SessionSpeaker) then) =
      _$SessionSpeakerCopyWithImpl<$Res, SessionSpeaker>;
  @useResult
  $Res call({String sessionId, String speakerId});
}

/// @nodoc
class _$SessionSpeakerCopyWithImpl<$Res, $Val extends SessionSpeaker>
    implements $SessionSpeakerCopyWith<$Res> {
  _$SessionSpeakerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionSpeaker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? speakerId = null,
  }) {
    return _then(_value.copyWith(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      speakerId: null == speakerId
          ? _value.speakerId
          : speakerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionSpeakerImplCopyWith<$Res>
    implements $SessionSpeakerCopyWith<$Res> {
  factory _$$SessionSpeakerImplCopyWith(_$SessionSpeakerImpl value,
          $Res Function(_$SessionSpeakerImpl) then) =
      __$$SessionSpeakerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId, String speakerId});
}

/// @nodoc
class __$$SessionSpeakerImplCopyWithImpl<$Res>
    extends _$SessionSpeakerCopyWithImpl<$Res, _$SessionSpeakerImpl>
    implements _$$SessionSpeakerImplCopyWith<$Res> {
  __$$SessionSpeakerImplCopyWithImpl(
      _$SessionSpeakerImpl _value, $Res Function(_$SessionSpeakerImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionSpeaker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? speakerId = null,
  }) {
    return _then(_$SessionSpeakerImpl(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      speakerId: null == speakerId
          ? _value.speakerId
          : speakerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionSpeakerImpl implements _SessionSpeaker {
  const _$SessionSpeakerImpl(
      {required this.sessionId, required this.speakerId});

  factory _$SessionSpeakerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionSpeakerImplFromJson(json);

  @override
  final String sessionId;
  @override
  final String speakerId;

  @override
  String toString() {
    return 'SessionSpeaker(sessionId: $sessionId, speakerId: $speakerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionSpeakerImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.speakerId, speakerId) ||
                other.speakerId == speakerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId, speakerId);

  /// Create a copy of SessionSpeaker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionSpeakerImplCopyWith<_$SessionSpeakerImpl> get copyWith =>
      __$$SessionSpeakerImplCopyWithImpl<_$SessionSpeakerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionSpeakerImplToJson(
      this,
    );
  }
}

abstract class _SessionSpeaker implements SessionSpeaker {
  const factory _SessionSpeaker(
      {required final String sessionId,
      required final String speakerId}) = _$SessionSpeakerImpl;

  factory _SessionSpeaker.fromJson(Map<String, dynamic> json) =
      _$SessionSpeakerImpl.fromJson;

  @override
  String get sessionId;
  @override
  String get speakerId;

  /// Create a copy of SessionSpeaker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionSpeakerImplCopyWith<_$SessionSpeakerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
