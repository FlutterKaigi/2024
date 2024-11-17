// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecialSession _$SpecialSessionFromJson(Map<String, dynamic> json) {
  return _SpecialSession.fromJson(json);
}

/// @nodoc
mixin _$SpecialSession {
  String get title => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  SpecialSessionType get type => throw _privateConstructorUsedError;
  DateTime? get endsAt => throw _privateConstructorUsedError;
  Speaker? get speaker => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String? get speakerTitle => throw _privateConstructorUsedError;
  String? get venueId => throw _privateConstructorUsedError;

  /// Serializes this SpecialSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecialSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecialSessionCopyWith<SpecialSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialSessionCopyWith<$Res> {
  factory $SpecialSessionCopyWith(
          SpecialSession value, $Res Function(SpecialSession) then) =
      _$SpecialSessionCopyWithImpl<$Res, SpecialSession>;
  @useResult
  $Res call(
      {String title,
      DateTime startsAt,
      SpecialSessionType type,
      DateTime? endsAt,
      Speaker? speaker,
      String? imagePath,
      String? speakerTitle,
      String? venueId});

  $SpeakerCopyWith<$Res>? get speaker;
}

/// @nodoc
class _$SpecialSessionCopyWithImpl<$Res, $Val extends SpecialSession>
    implements $SpecialSessionCopyWith<$Res> {
  _$SpecialSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecialSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? startsAt = null,
    Object? type = null,
    Object? endsAt = freezed,
    Object? speaker = freezed,
    Object? imagePath = freezed,
    Object? speakerTitle = freezed,
    Object? venueId = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SpecialSessionType,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      speaker: freezed == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      speakerTitle: freezed == speakerTitle
          ? _value.speakerTitle
          : speakerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      venueId: freezed == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SpecialSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeakerCopyWith<$Res>? get speaker {
    if (_value.speaker == null) {
      return null;
    }

    return $SpeakerCopyWith<$Res>(_value.speaker!, (value) {
      return _then(_value.copyWith(speaker: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecialSessionImplCopyWith<$Res>
    implements $SpecialSessionCopyWith<$Res> {
  factory _$$SpecialSessionImplCopyWith(_$SpecialSessionImpl value,
          $Res Function(_$SpecialSessionImpl) then) =
      __$$SpecialSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      DateTime startsAt,
      SpecialSessionType type,
      DateTime? endsAt,
      Speaker? speaker,
      String? imagePath,
      String? speakerTitle,
      String? venueId});

  @override
  $SpeakerCopyWith<$Res>? get speaker;
}

/// @nodoc
class __$$SpecialSessionImplCopyWithImpl<$Res>
    extends _$SpecialSessionCopyWithImpl<$Res, _$SpecialSessionImpl>
    implements _$$SpecialSessionImplCopyWith<$Res> {
  __$$SpecialSessionImplCopyWithImpl(
      _$SpecialSessionImpl _value, $Res Function(_$SpecialSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecialSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? startsAt = null,
    Object? type = null,
    Object? endsAt = freezed,
    Object? speaker = freezed,
    Object? imagePath = freezed,
    Object? speakerTitle = freezed,
    Object? venueId = freezed,
  }) {
    return _then(_$SpecialSessionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SpecialSessionType,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      speaker: freezed == speaker
          ? _value.speaker
          : speaker // ignore: cast_nullable_to_non_nullable
              as Speaker?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      speakerTitle: freezed == speakerTitle
          ? _value.speakerTitle
          : speakerTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      venueId: freezed == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialSessionImpl implements _SpecialSession {
  const _$SpecialSessionImpl(
      {required this.title,
      required this.startsAt,
      required this.type,
      this.endsAt,
      this.speaker,
      this.imagePath,
      this.speakerTitle,
      this.venueId});

  factory _$SpecialSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialSessionImplFromJson(json);

  @override
  final String title;
  @override
  final DateTime startsAt;
  @override
  final SpecialSessionType type;
  @override
  final DateTime? endsAt;
  @override
  final Speaker? speaker;
  @override
  final String? imagePath;
  @override
  final String? speakerTitle;
  @override
  final String? venueId;

  @override
  String toString() {
    return 'SpecialSession(title: $title, startsAt: $startsAt, type: $type, endsAt: $endsAt, speaker: $speaker, imagePath: $imagePath, speakerTitle: $speakerTitle, venueId: $venueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialSessionImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.speaker, speaker) || other.speaker == speaker) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.speakerTitle, speakerTitle) ||
                other.speakerTitle == speakerTitle) &&
            (identical(other.venueId, venueId) || other.venueId == venueId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, startsAt, type, endsAt,
      speaker, imagePath, speakerTitle, venueId);

  /// Create a copy of SpecialSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialSessionImplCopyWith<_$SpecialSessionImpl> get copyWith =>
      __$$SpecialSessionImplCopyWithImpl<_$SpecialSessionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialSessionImplToJson(
      this,
    );
  }
}

abstract class _SpecialSession implements SpecialSession {
  const factory _SpecialSession(
      {required final String title,
      required final DateTime startsAt,
      required final SpecialSessionType type,
      final DateTime? endsAt,
      final Speaker? speaker,
      final String? imagePath,
      final String? speakerTitle,
      final String? venueId}) = _$SpecialSessionImpl;

  factory _SpecialSession.fromJson(Map<String, dynamic> json) =
      _$SpecialSessionImpl.fromJson;

  @override
  String get title;
  @override
  DateTime get startsAt;
  @override
  SpecialSessionType get type;
  @override
  DateTime? get endsAt;
  @override
  Speaker? get speaker;
  @override
  String? get imagePath;
  @override
  String? get speakerTitle;
  @override
  String? get venueId;

  /// Create a copy of SpecialSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecialSessionImplCopyWith<_$SpecialSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
