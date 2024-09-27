// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionMetadata _$PromotionMetadataFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'general':
      return PromotionMetadataGeneral.fromJson(json);
    case 'session':
      return PromotionMetadataSession.fromJson(json);
    case 'sponsor':
      return PromotionMetadataSponsor.fromJson(json);
    case 'sponsorSession':
      return PromotionMetadataSponsorSession.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'PromotionMetadata',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$PromotionMetadata {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function(String sessionId) session,
    required TResult Function(int sponsorId) sponsor,
    required TResult Function(int sponsorId, String sessionId) sponsorSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function(String sessionId)? session,
    TResult? Function(int sponsorId)? sponsor,
    TResult? Function(int sponsorId, String sessionId)? sponsorSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function(String sessionId)? session,
    TResult Function(int sponsorId)? sponsor,
    TResult Function(int sponsorId, String sessionId)? sponsorSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromotionMetadataGeneral value) general,
    required TResult Function(PromotionMetadataSession value) session,
    required TResult Function(PromotionMetadataSponsor value) sponsor,
    required TResult Function(PromotionMetadataSponsorSession value)
        sponsorSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromotionMetadataGeneral value)? general,
    TResult? Function(PromotionMetadataSession value)? session,
    TResult? Function(PromotionMetadataSponsor value)? sponsor,
    TResult? Function(PromotionMetadataSponsorSession value)? sponsorSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromotionMetadataGeneral value)? general,
    TResult Function(PromotionMetadataSession value)? session,
    TResult Function(PromotionMetadataSponsor value)? sponsor,
    TResult Function(PromotionMetadataSponsorSession value)? sponsorSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PromotionMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionMetadataCopyWith<$Res> {
  factory $PromotionMetadataCopyWith(
          PromotionMetadata value, $Res Function(PromotionMetadata) then) =
      _$PromotionMetadataCopyWithImpl<$Res, PromotionMetadata>;
}

/// @nodoc
class _$PromotionMetadataCopyWithImpl<$Res, $Val extends PromotionMetadata>
    implements $PromotionMetadataCopyWith<$Res> {
  _$PromotionMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PromotionMetadataGeneralImplCopyWith<$Res> {
  factory _$$PromotionMetadataGeneralImplCopyWith(
          _$PromotionMetadataGeneralImpl value,
          $Res Function(_$PromotionMetadataGeneralImpl) then) =
      __$$PromotionMetadataGeneralImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromotionMetadataGeneralImplCopyWithImpl<$Res>
    extends _$PromotionMetadataCopyWithImpl<$Res,
        _$PromotionMetadataGeneralImpl>
    implements _$$PromotionMetadataGeneralImplCopyWith<$Res> {
  __$$PromotionMetadataGeneralImplCopyWithImpl(
      _$PromotionMetadataGeneralImpl _value,
      $Res Function(_$PromotionMetadataGeneralImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$PromotionMetadataGeneralImpl implements PromotionMetadataGeneral {
  const _$PromotionMetadataGeneralImpl({final String? $type})
      : $type = $type ?? 'general';

  factory _$PromotionMetadataGeneralImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionMetadataGeneralImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PromotionMetadata.general()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionMetadataGeneralImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function(String sessionId) session,
    required TResult Function(int sponsorId) sponsor,
    required TResult Function(int sponsorId, String sessionId) sponsorSession,
  }) {
    return general();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function(String sessionId)? session,
    TResult? Function(int sponsorId)? sponsor,
    TResult? Function(int sponsorId, String sessionId)? sponsorSession,
  }) {
    return general?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function(String sessionId)? session,
    TResult Function(int sponsorId)? sponsor,
    TResult Function(int sponsorId, String sessionId)? sponsorSession,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromotionMetadataGeneral value) general,
    required TResult Function(PromotionMetadataSession value) session,
    required TResult Function(PromotionMetadataSponsor value) sponsor,
    required TResult Function(PromotionMetadataSponsorSession value)
        sponsorSession,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromotionMetadataGeneral value)? general,
    TResult? Function(PromotionMetadataSession value)? session,
    TResult? Function(PromotionMetadataSponsor value)? sponsor,
    TResult? Function(PromotionMetadataSponsorSession value)? sponsorSession,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromotionMetadataGeneral value)? general,
    TResult Function(PromotionMetadataSession value)? session,
    TResult Function(PromotionMetadataSponsor value)? sponsor,
    TResult Function(PromotionMetadataSponsorSession value)? sponsorSession,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionMetadataGeneralImplToJson(
      this,
    );
  }
}

abstract class PromotionMetadataGeneral implements PromotionMetadata {
  const factory PromotionMetadataGeneral() = _$PromotionMetadataGeneralImpl;

  factory PromotionMetadataGeneral.fromJson(Map<String, dynamic> json) =
      _$PromotionMetadataGeneralImpl.fromJson;
}

/// @nodoc
abstract class _$$PromotionMetadataSessionImplCopyWith<$Res> {
  factory _$$PromotionMetadataSessionImplCopyWith(
          _$PromotionMetadataSessionImpl value,
          $Res Function(_$PromotionMetadataSessionImpl) then) =
      __$$PromotionMetadataSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class __$$PromotionMetadataSessionImplCopyWithImpl<$Res>
    extends _$PromotionMetadataCopyWithImpl<$Res,
        _$PromotionMetadataSessionImpl>
    implements _$$PromotionMetadataSessionImplCopyWith<$Res> {
  __$$PromotionMetadataSessionImplCopyWithImpl(
      _$PromotionMetadataSessionImpl _value,
      $Res Function(_$PromotionMetadataSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
  }) {
    return _then(_$PromotionMetadataSessionImpl(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionMetadataSessionImpl implements PromotionMetadataSession {
  const _$PromotionMetadataSessionImpl(
      {required this.sessionId, final String? $type})
      : $type = $type ?? 'session';

  factory _$PromotionMetadataSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionMetadataSessionImplFromJson(json);

  @override
  final String sessionId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PromotionMetadata.session(sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionMetadataSessionImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionMetadataSessionImplCopyWith<_$PromotionMetadataSessionImpl>
      get copyWith => __$$PromotionMetadataSessionImplCopyWithImpl<
          _$PromotionMetadataSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function(String sessionId) session,
    required TResult Function(int sponsorId) sponsor,
    required TResult Function(int sponsorId, String sessionId) sponsorSession,
  }) {
    return session(sessionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function(String sessionId)? session,
    TResult? Function(int sponsorId)? sponsor,
    TResult? Function(int sponsorId, String sessionId)? sponsorSession,
  }) {
    return session?.call(sessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function(String sessionId)? session,
    TResult Function(int sponsorId)? sponsor,
    TResult Function(int sponsorId, String sessionId)? sponsorSession,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(sessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromotionMetadataGeneral value) general,
    required TResult Function(PromotionMetadataSession value) session,
    required TResult Function(PromotionMetadataSponsor value) sponsor,
    required TResult Function(PromotionMetadataSponsorSession value)
        sponsorSession,
  }) {
    return session(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromotionMetadataGeneral value)? general,
    TResult? Function(PromotionMetadataSession value)? session,
    TResult? Function(PromotionMetadataSponsor value)? sponsor,
    TResult? Function(PromotionMetadataSponsorSession value)? sponsorSession,
  }) {
    return session?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromotionMetadataGeneral value)? general,
    TResult Function(PromotionMetadataSession value)? session,
    TResult Function(PromotionMetadataSponsor value)? sponsor,
    TResult Function(PromotionMetadataSponsorSession value)? sponsorSession,
    required TResult orElse(),
  }) {
    if (session != null) {
      return session(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionMetadataSessionImplToJson(
      this,
    );
  }
}

abstract class PromotionMetadataSession implements PromotionMetadata {
  const factory PromotionMetadataSession({required final String sessionId}) =
      _$PromotionMetadataSessionImpl;

  factory PromotionMetadataSession.fromJson(Map<String, dynamic> json) =
      _$PromotionMetadataSessionImpl.fromJson;

  String get sessionId;

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionMetadataSessionImplCopyWith<_$PromotionMetadataSessionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromotionMetadataSponsorImplCopyWith<$Res> {
  factory _$$PromotionMetadataSponsorImplCopyWith(
          _$PromotionMetadataSponsorImpl value,
          $Res Function(_$PromotionMetadataSponsorImpl) then) =
      __$$PromotionMetadataSponsorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int sponsorId});
}

/// @nodoc
class __$$PromotionMetadataSponsorImplCopyWithImpl<$Res>
    extends _$PromotionMetadataCopyWithImpl<$Res,
        _$PromotionMetadataSponsorImpl>
    implements _$$PromotionMetadataSponsorImplCopyWith<$Res> {
  __$$PromotionMetadataSponsorImplCopyWithImpl(
      _$PromotionMetadataSponsorImpl _value,
      $Res Function(_$PromotionMetadataSponsorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sponsorId = null,
  }) {
    return _then(_$PromotionMetadataSponsorImpl(
      sponsorId: null == sponsorId
          ? _value.sponsorId
          : sponsorId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionMetadataSponsorImpl implements PromotionMetadataSponsor {
  const _$PromotionMetadataSponsorImpl(
      {required this.sponsorId, final String? $type})
      : assert(sponsorId >= 0, 'sponsorId must be greater than or equal to 0'),
        $type = $type ?? 'sponsor';

  factory _$PromotionMetadataSponsorImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionMetadataSponsorImplFromJson(json);

  @override
  final int sponsorId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PromotionMetadata.sponsor(sponsorId: $sponsorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionMetadataSponsorImpl &&
            (identical(other.sponsorId, sponsorId) ||
                other.sponsorId == sponsorId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sponsorId);

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionMetadataSponsorImplCopyWith<_$PromotionMetadataSponsorImpl>
      get copyWith => __$$PromotionMetadataSponsorImplCopyWithImpl<
          _$PromotionMetadataSponsorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function(String sessionId) session,
    required TResult Function(int sponsorId) sponsor,
    required TResult Function(int sponsorId, String sessionId) sponsorSession,
  }) {
    return sponsor(sponsorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function(String sessionId)? session,
    TResult? Function(int sponsorId)? sponsor,
    TResult? Function(int sponsorId, String sessionId)? sponsorSession,
  }) {
    return sponsor?.call(sponsorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function(String sessionId)? session,
    TResult Function(int sponsorId)? sponsor,
    TResult Function(int sponsorId, String sessionId)? sponsorSession,
    required TResult orElse(),
  }) {
    if (sponsor != null) {
      return sponsor(sponsorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromotionMetadataGeneral value) general,
    required TResult Function(PromotionMetadataSession value) session,
    required TResult Function(PromotionMetadataSponsor value) sponsor,
    required TResult Function(PromotionMetadataSponsorSession value)
        sponsorSession,
  }) {
    return sponsor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromotionMetadataGeneral value)? general,
    TResult? Function(PromotionMetadataSession value)? session,
    TResult? Function(PromotionMetadataSponsor value)? sponsor,
    TResult? Function(PromotionMetadataSponsorSession value)? sponsorSession,
  }) {
    return sponsor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromotionMetadataGeneral value)? general,
    TResult Function(PromotionMetadataSession value)? session,
    TResult Function(PromotionMetadataSponsor value)? sponsor,
    TResult Function(PromotionMetadataSponsorSession value)? sponsorSession,
    required TResult orElse(),
  }) {
    if (sponsor != null) {
      return sponsor(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionMetadataSponsorImplToJson(
      this,
    );
  }
}

abstract class PromotionMetadataSponsor implements PromotionMetadata {
  const factory PromotionMetadataSponsor({required final int sponsorId}) =
      _$PromotionMetadataSponsorImpl;

  factory PromotionMetadataSponsor.fromJson(Map<String, dynamic> json) =
      _$PromotionMetadataSponsorImpl.fromJson;

  int get sponsorId;

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionMetadataSponsorImplCopyWith<_$PromotionMetadataSponsorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromotionMetadataSponsorSessionImplCopyWith<$Res> {
  factory _$$PromotionMetadataSponsorSessionImplCopyWith(
          _$PromotionMetadataSponsorSessionImpl value,
          $Res Function(_$PromotionMetadataSponsorSessionImpl) then) =
      __$$PromotionMetadataSponsorSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int sponsorId, String sessionId});
}

/// @nodoc
class __$$PromotionMetadataSponsorSessionImplCopyWithImpl<$Res>
    extends _$PromotionMetadataCopyWithImpl<$Res,
        _$PromotionMetadataSponsorSessionImpl>
    implements _$$PromotionMetadataSponsorSessionImplCopyWith<$Res> {
  __$$PromotionMetadataSponsorSessionImplCopyWithImpl(
      _$PromotionMetadataSponsorSessionImpl _value,
      $Res Function(_$PromotionMetadataSponsorSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sponsorId = null,
    Object? sessionId = null,
  }) {
    return _then(_$PromotionMetadataSponsorSessionImpl(
      sponsorId: null == sponsorId
          ? _value.sponsorId
          : sponsorId // ignore: cast_nullable_to_non_nullable
              as int,
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionMetadataSponsorSessionImpl
    implements PromotionMetadataSponsorSession {
  const _$PromotionMetadataSponsorSessionImpl(
      {required this.sponsorId, required this.sessionId, final String? $type})
      : assert(sponsorId >= 0, 'sponsorId must be greater than or equal to 0'),
        $type = $type ?? 'sponsorSession';

  factory _$PromotionMetadataSponsorSessionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PromotionMetadataSponsorSessionImplFromJson(json);

  @override
  final int sponsorId;
  @override
  final String sessionId;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PromotionMetadata.sponsorSession(sponsorId: $sponsorId, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionMetadataSponsorSessionImpl &&
            (identical(other.sponsorId, sponsorId) ||
                other.sponsorId == sponsorId) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sponsorId, sessionId);

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionMetadataSponsorSessionImplCopyWith<
          _$PromotionMetadataSponsorSessionImpl>
      get copyWith => __$$PromotionMetadataSponsorSessionImplCopyWithImpl<
          _$PromotionMetadataSponsorSessionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function(String sessionId) session,
    required TResult Function(int sponsorId) sponsor,
    required TResult Function(int sponsorId, String sessionId) sponsorSession,
  }) {
    return sponsorSession(sponsorId, sessionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function(String sessionId)? session,
    TResult? Function(int sponsorId)? sponsor,
    TResult? Function(int sponsorId, String sessionId)? sponsorSession,
  }) {
    return sponsorSession?.call(sponsorId, sessionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function(String sessionId)? session,
    TResult Function(int sponsorId)? sponsor,
    TResult Function(int sponsorId, String sessionId)? sponsorSession,
    required TResult orElse(),
  }) {
    if (sponsorSession != null) {
      return sponsorSession(sponsorId, sessionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PromotionMetadataGeneral value) general,
    required TResult Function(PromotionMetadataSession value) session,
    required TResult Function(PromotionMetadataSponsor value) sponsor,
    required TResult Function(PromotionMetadataSponsorSession value)
        sponsorSession,
  }) {
    return sponsorSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PromotionMetadataGeneral value)? general,
    TResult? Function(PromotionMetadataSession value)? session,
    TResult? Function(PromotionMetadataSponsor value)? sponsor,
    TResult? Function(PromotionMetadataSponsorSession value)? sponsorSession,
  }) {
    return sponsorSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PromotionMetadataGeneral value)? general,
    TResult Function(PromotionMetadataSession value)? session,
    TResult Function(PromotionMetadataSponsor value)? sponsor,
    TResult Function(PromotionMetadataSponsorSession value)? sponsorSession,
    required TResult orElse(),
  }) {
    if (sponsorSession != null) {
      return sponsorSession(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionMetadataSponsorSessionImplToJson(
      this,
    );
  }
}

abstract class PromotionMetadataSponsorSession implements PromotionMetadata {
  const factory PromotionMetadataSponsorSession(
      {required final int sponsorId,
      required final String sessionId}) = _$PromotionMetadataSponsorSessionImpl;

  factory PromotionMetadataSponsorSession.fromJson(Map<String, dynamic> json) =
      _$PromotionMetadataSponsorSessionImpl.fromJson;

  int get sponsorId;
  String get sessionId;

  /// Create a copy of PromotionMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionMetadataSponsorSessionImplCopyWith<
          _$PromotionMetadataSponsorSessionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
