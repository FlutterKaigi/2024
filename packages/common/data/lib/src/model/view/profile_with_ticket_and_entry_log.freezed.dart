// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_with_ticket_and_entry_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileWithTicketAndEntryLog _$ProfileWithTicketAndEntryLogFromJson(
    Map<String, dynamic> json) {
  return _ProfileWithTicketAndEntryLog.fromJson(json);
}

/// @nodoc
mixin _$ProfileWithTicketAndEntryLog {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  Ticket? get ticket => throw _privateConstructorUsedError;
  EntryLog? get entryLog => throw _privateConstructorUsedError;

  /// Serializes this ProfileWithTicketAndEntryLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileWithTicketAndEntryLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileWithTicketAndEntryLogCopyWith<ProfileWithTicketAndEntryLog>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWithTicketAndEntryLogCopyWith<$Res> {
  factory $ProfileWithTicketAndEntryLogCopyWith(
          ProfileWithTicketAndEntryLog value,
          $Res Function(ProfileWithTicketAndEntryLog) then) =
      _$ProfileWithTicketAndEntryLogCopyWithImpl<$Res,
          ProfileWithTicketAndEntryLog>;
  @useResult
  $Res call(
      {String id,
      String email,
      Profile profile,
      Ticket? ticket,
      EntryLog? entryLog});

  $ProfileCopyWith<$Res> get profile;
  $TicketCopyWith<$Res>? get ticket;
  $EntryLogCopyWith<$Res>? get entryLog;
}

/// @nodoc
class _$ProfileWithTicketAndEntryLogCopyWithImpl<$Res,
        $Val extends ProfileWithTicketAndEntryLog>
    implements $ProfileWithTicketAndEntryLogCopyWith<$Res> {
  _$ProfileWithTicketAndEntryLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileWithTicketAndEntryLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? profile = null,
    Object? ticket = freezed,
    Object? entryLog = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      entryLog: freezed == entryLog
          ? _value.entryLog
          : entryLog // ignore: cast_nullable_to_non_nullable
              as EntryLog?,
    ) as $Val);
  }

  /// Create a copy of ProfileWithTicketAndEntryLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  /// Create a copy of ProfileWithTicketAndEntryLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $TicketCopyWith<$Res>(_value.ticket!, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }

  /// Create a copy of ProfileWithTicketAndEntryLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntryLogCopyWith<$Res>? get entryLog {
    if (_value.entryLog == null) {
      return null;
    }

    return $EntryLogCopyWith<$Res>(_value.entryLog!, (value) {
      return _then(_value.copyWith(entryLog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileWithTicketAndEntryLogImplCopyWith<$Res>
    implements $ProfileWithTicketAndEntryLogCopyWith<$Res> {
  factory _$$ProfileWithTicketAndEntryLogImplCopyWith(
          _$ProfileWithTicketAndEntryLogImpl value,
          $Res Function(_$ProfileWithTicketAndEntryLogImpl) then) =
      __$$ProfileWithTicketAndEntryLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      Profile profile,
      Ticket? ticket,
      EntryLog? entryLog});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $TicketCopyWith<$Res>? get ticket;
  @override
  $EntryLogCopyWith<$Res>? get entryLog;
}

/// @nodoc
class __$$ProfileWithTicketAndEntryLogImplCopyWithImpl<$Res>
    extends _$ProfileWithTicketAndEntryLogCopyWithImpl<$Res,
        _$ProfileWithTicketAndEntryLogImpl>
    implements _$$ProfileWithTicketAndEntryLogImplCopyWith<$Res> {
  __$$ProfileWithTicketAndEntryLogImplCopyWithImpl(
      _$ProfileWithTicketAndEntryLogImpl _value,
      $Res Function(_$ProfileWithTicketAndEntryLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileWithTicketAndEntryLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? profile = null,
    Object? ticket = freezed,
    Object? entryLog = freezed,
  }) {
    return _then(_$ProfileWithTicketAndEntryLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      entryLog: freezed == entryLog
          ? _value.entryLog
          : entryLog // ignore: cast_nullable_to_non_nullable
              as EntryLog?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileWithTicketAndEntryLogImpl
    implements _ProfileWithTicketAndEntryLog {
  const _$ProfileWithTicketAndEntryLogImpl(
      {required this.id,
      required this.email,
      required this.profile,
      required this.ticket,
      required this.entryLog});

  factory _$ProfileWithTicketAndEntryLogImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileWithTicketAndEntryLogImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final Profile profile;
  @override
  final Ticket? ticket;
  @override
  final EntryLog? entryLog;

  @override
  String toString() {
    return 'ProfileWithTicketAndEntryLog(id: $id, email: $email, profile: $profile, ticket: $ticket, entryLog: $entryLog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileWithTicketAndEntryLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.entryLog, entryLog) ||
                other.entryLog == entryLog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, profile, ticket, entryLog);

  /// Create a copy of ProfileWithTicketAndEntryLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileWithTicketAndEntryLogImplCopyWith<
          _$ProfileWithTicketAndEntryLogImpl>
      get copyWith => __$$ProfileWithTicketAndEntryLogImplCopyWithImpl<
          _$ProfileWithTicketAndEntryLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileWithTicketAndEntryLogImplToJson(
      this,
    );
  }
}

abstract class _ProfileWithTicketAndEntryLog
    implements ProfileWithTicketAndEntryLog {
  const factory _ProfileWithTicketAndEntryLog(
      {required final String id,
      required final String email,
      required final Profile profile,
      required final Ticket? ticket,
      required final EntryLog? entryLog}) = _$ProfileWithTicketAndEntryLogImpl;

  factory _ProfileWithTicketAndEntryLog.fromJson(Map<String, dynamic> json) =
      _$ProfileWithTicketAndEntryLogImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  Profile get profile;
  @override
  Ticket? get ticket;
  @override
  EntryLog? get entryLog;

  /// Create a copy of ProfileWithTicketAndEntryLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileWithTicketAndEntryLogImplCopyWith<
          _$ProfileWithTicketAndEntryLogImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileWithTicketAndEntryLogArgument
    _$ProfileWithTicketAndEntryLogArgumentFromJson(Map<String, dynamic> json) {
  return _ProfileWithTicketAndEntryLogArgument.fromJson(json);
}

/// @nodoc
mixin _$ProfileWithTicketAndEntryLogArgument {
  bool? get hasTicket => throw _privateConstructorUsedError;
  bool? get hasEntryLog => throw _privateConstructorUsedError;
  String? get userIdContains => throw _privateConstructorUsedError;
  String? get emailContains => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  ProfileWithTicketAndEntryLogSort get sortBy =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  SortOrder get sortOrder => throw _privateConstructorUsedError;

  /// Serializes this ProfileWithTicketAndEntryLogArgument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileWithTicketAndEntryLogArgument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileWithTicketAndEntryLogArgumentCopyWith<
          ProfileWithTicketAndEntryLogArgument>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWithTicketAndEntryLogArgumentCopyWith<$Res> {
  factory $ProfileWithTicketAndEntryLogArgumentCopyWith(
          ProfileWithTicketAndEntryLogArgument value,
          $Res Function(ProfileWithTicketAndEntryLogArgument) then) =
      _$ProfileWithTicketAndEntryLogArgumentCopyWithImpl<$Res,
          ProfileWithTicketAndEntryLogArgument>;
  @useResult
  $Res call(
      {bool? hasTicket,
      bool? hasEntryLog,
      String? userIdContains,
      String? emailContains,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ProfileWithTicketAndEntryLogSort sortBy,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SortOrder sortOrder});
}

/// @nodoc
class _$ProfileWithTicketAndEntryLogArgumentCopyWithImpl<$Res,
        $Val extends ProfileWithTicketAndEntryLogArgument>
    implements $ProfileWithTicketAndEntryLogArgumentCopyWith<$Res> {
  _$ProfileWithTicketAndEntryLogArgumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileWithTicketAndEntryLogArgument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasTicket = freezed,
    Object? hasEntryLog = freezed,
    Object? userIdContains = freezed,
    Object? emailContains = freezed,
    Object? sortBy = null,
    Object? sortOrder = null,
  }) {
    return _then(_value.copyWith(
      hasTicket: freezed == hasTicket
          ? _value.hasTicket
          : hasTicket // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasEntryLog: freezed == hasEntryLog
          ? _value.hasEntryLog
          : hasEntryLog // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIdContains: freezed == userIdContains
          ? _value.userIdContains
          : userIdContains // ignore: cast_nullable_to_non_nullable
              as String?,
      emailContains: freezed == emailContains
          ? _value.emailContains
          : emailContains // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as ProfileWithTicketAndEntryLogSort,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileWithTicketAndEntryLogArgumentImplCopyWith<$Res>
    implements $ProfileWithTicketAndEntryLogArgumentCopyWith<$Res> {
  factory _$$ProfileWithTicketAndEntryLogArgumentImplCopyWith(
          _$ProfileWithTicketAndEntryLogArgumentImpl value,
          $Res Function(_$ProfileWithTicketAndEntryLogArgumentImpl) then) =
      __$$ProfileWithTicketAndEntryLogArgumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? hasTicket,
      bool? hasEntryLog,
      String? userIdContains,
      String? emailContains,
      @JsonKey(includeFromJson: false, includeToJson: false)
      ProfileWithTicketAndEntryLogSort sortBy,
      @JsonKey(includeFromJson: false, includeToJson: false)
      SortOrder sortOrder});
}

/// @nodoc
class __$$ProfileWithTicketAndEntryLogArgumentImplCopyWithImpl<$Res>
    extends _$ProfileWithTicketAndEntryLogArgumentCopyWithImpl<$Res,
        _$ProfileWithTicketAndEntryLogArgumentImpl>
    implements _$$ProfileWithTicketAndEntryLogArgumentImplCopyWith<$Res> {
  __$$ProfileWithTicketAndEntryLogArgumentImplCopyWithImpl(
      _$ProfileWithTicketAndEntryLogArgumentImpl _value,
      $Res Function(_$ProfileWithTicketAndEntryLogArgumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileWithTicketAndEntryLogArgument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasTicket = freezed,
    Object? hasEntryLog = freezed,
    Object? userIdContains = freezed,
    Object? emailContains = freezed,
    Object? sortBy = null,
    Object? sortOrder = null,
  }) {
    return _then(_$ProfileWithTicketAndEntryLogArgumentImpl(
      hasTicket: freezed == hasTicket
          ? _value.hasTicket
          : hasTicket // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasEntryLog: freezed == hasEntryLog
          ? _value.hasEntryLog
          : hasEntryLog // ignore: cast_nullable_to_non_nullable
              as bool?,
      userIdContains: freezed == userIdContains
          ? _value.userIdContains
          : userIdContains // ignore: cast_nullable_to_non_nullable
              as String?,
      emailContains: freezed == emailContains
          ? _value.emailContains
          : emailContains // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as ProfileWithTicketAndEntryLogSort,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as SortOrder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileWithTicketAndEntryLogArgumentImpl
    implements _ProfileWithTicketAndEntryLogArgument {
  const _$ProfileWithTicketAndEntryLogArgumentImpl(
      {this.hasTicket,
      this.hasEntryLog,
      this.userIdContains,
      this.emailContains,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.sortBy = ProfileWithTicketAndEntryLogSort.id,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.sortOrder = SortOrder.asc});

  factory _$ProfileWithTicketAndEntryLogArgumentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileWithTicketAndEntryLogArgumentImplFromJson(json);

  @override
  final bool? hasTicket;
  @override
  final bool? hasEntryLog;
  @override
  final String? userIdContains;
  @override
  final String? emailContains;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ProfileWithTicketAndEntryLogSort sortBy;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final SortOrder sortOrder;

  @override
  String toString() {
    return 'ProfileWithTicketAndEntryLogArgument(hasTicket: $hasTicket, hasEntryLog: $hasEntryLog, userIdContains: $userIdContains, emailContains: $emailContains, sortBy: $sortBy, sortOrder: $sortOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileWithTicketAndEntryLogArgumentImpl &&
            (identical(other.hasTicket, hasTicket) ||
                other.hasTicket == hasTicket) &&
            (identical(other.hasEntryLog, hasEntryLog) ||
                other.hasEntryLog == hasEntryLog) &&
            (identical(other.userIdContains, userIdContains) ||
                other.userIdContains == userIdContains) &&
            (identical(other.emailContains, emailContains) ||
                other.emailContains == emailContains) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hasTicket, hasEntryLog,
      userIdContains, emailContains, sortBy, sortOrder);

  /// Create a copy of ProfileWithTicketAndEntryLogArgument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileWithTicketAndEntryLogArgumentImplCopyWith<
          _$ProfileWithTicketAndEntryLogArgumentImpl>
      get copyWith => __$$ProfileWithTicketAndEntryLogArgumentImplCopyWithImpl<
          _$ProfileWithTicketAndEntryLogArgumentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileWithTicketAndEntryLogArgumentImplToJson(
      this,
    );
  }
}

abstract class _ProfileWithTicketAndEntryLogArgument
    implements ProfileWithTicketAndEntryLogArgument {
  const factory _ProfileWithTicketAndEntryLogArgument(
      {final bool? hasTicket,
      final bool? hasEntryLog,
      final String? userIdContains,
      final String? emailContains,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final ProfileWithTicketAndEntryLogSort sortBy,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final SortOrder sortOrder}) = _$ProfileWithTicketAndEntryLogArgumentImpl;

  factory _ProfileWithTicketAndEntryLogArgument.fromJson(
          Map<String, dynamic> json) =
      _$ProfileWithTicketAndEntryLogArgumentImpl.fromJson;

  @override
  bool? get hasTicket;
  @override
  bool? get hasEntryLog;
  @override
  String? get userIdContains;
  @override
  String? get emailContains;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  ProfileWithTicketAndEntryLogSort get sortBy;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  SortOrder get sortOrder;

  /// Create a copy of ProfileWithTicketAndEntryLogArgument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileWithTicketAndEntryLogArgumentImplCopyWith<
          _$ProfileWithTicketAndEntryLogArgumentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileWithTicketAndEntryLogView _$ProfileWithTicketAndEntryLogViewFromJson(
    Map<String, dynamic> json) {
  return _ProfileWithTicketAndEntryLogView.fromJson(json);
}

/// @nodoc
mixin _$ProfileWithTicketAndEntryLogView {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  ProfileTable get profile => throw _privateConstructorUsedError;
  Ticket? get ticket => throw _privateConstructorUsedError;
  EntryLog? get entryLog => throw _privateConstructorUsedError;

  /// Serializes this ProfileWithTicketAndEntryLogView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileWithTicketAndEntryLogView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileWithTicketAndEntryLogViewCopyWith<ProfileWithTicketAndEntryLogView>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWithTicketAndEntryLogViewCopyWith<$Res> {
  factory $ProfileWithTicketAndEntryLogViewCopyWith(
          ProfileWithTicketAndEntryLogView value,
          $Res Function(ProfileWithTicketAndEntryLogView) then) =
      _$ProfileWithTicketAndEntryLogViewCopyWithImpl<$Res,
          ProfileWithTicketAndEntryLogView>;
  @useResult
  $Res call(
      {String id,
      String email,
      ProfileTable profile,
      Ticket? ticket,
      EntryLog? entryLog});

  $ProfileTableCopyWith<$Res> get profile;
  $TicketCopyWith<$Res>? get ticket;
  $EntryLogCopyWith<$Res>? get entryLog;
}

/// @nodoc
class _$ProfileWithTicketAndEntryLogViewCopyWithImpl<$Res,
        $Val extends ProfileWithTicketAndEntryLogView>
    implements $ProfileWithTicketAndEntryLogViewCopyWith<$Res> {
  _$ProfileWithTicketAndEntryLogViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileWithTicketAndEntryLogView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? profile = null,
    Object? ticket = freezed,
    Object? entryLog = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileTable,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      entryLog: freezed == entryLog
          ? _value.entryLog
          : entryLog // ignore: cast_nullable_to_non_nullable
              as EntryLog?,
    ) as $Val);
  }

  /// Create a copy of ProfileWithTicketAndEntryLogView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileTableCopyWith<$Res> get profile {
    return $ProfileTableCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  /// Create a copy of ProfileWithTicketAndEntryLogView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $TicketCopyWith<$Res>(_value.ticket!, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }

  /// Create a copy of ProfileWithTicketAndEntryLogView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EntryLogCopyWith<$Res>? get entryLog {
    if (_value.entryLog == null) {
      return null;
    }

    return $EntryLogCopyWith<$Res>(_value.entryLog!, (value) {
      return _then(_value.copyWith(entryLog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileWithTicketAndEntryLogViewImplCopyWith<$Res>
    implements $ProfileWithTicketAndEntryLogViewCopyWith<$Res> {
  factory _$$ProfileWithTicketAndEntryLogViewImplCopyWith(
          _$ProfileWithTicketAndEntryLogViewImpl value,
          $Res Function(_$ProfileWithTicketAndEntryLogViewImpl) then) =
      __$$ProfileWithTicketAndEntryLogViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      ProfileTable profile,
      Ticket? ticket,
      EntryLog? entryLog});

  @override
  $ProfileTableCopyWith<$Res> get profile;
  @override
  $TicketCopyWith<$Res>? get ticket;
  @override
  $EntryLogCopyWith<$Res>? get entryLog;
}

/// @nodoc
class __$$ProfileWithTicketAndEntryLogViewImplCopyWithImpl<$Res>
    extends _$ProfileWithTicketAndEntryLogViewCopyWithImpl<$Res,
        _$ProfileWithTicketAndEntryLogViewImpl>
    implements _$$ProfileWithTicketAndEntryLogViewImplCopyWith<$Res> {
  __$$ProfileWithTicketAndEntryLogViewImplCopyWithImpl(
      _$ProfileWithTicketAndEntryLogViewImpl _value,
      $Res Function(_$ProfileWithTicketAndEntryLogViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileWithTicketAndEntryLogView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? profile = null,
    Object? ticket = freezed,
    Object? entryLog = freezed,
  }) {
    return _then(_$ProfileWithTicketAndEntryLogViewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileTable,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket?,
      entryLog: freezed == entryLog
          ? _value.entryLog
          : entryLog // ignore: cast_nullable_to_non_nullable
              as EntryLog?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileWithTicketAndEntryLogViewImpl
    implements _ProfileWithTicketAndEntryLogView {
  const _$ProfileWithTicketAndEntryLogViewImpl(
      {required this.id,
      required this.email,
      required this.profile,
      required this.ticket,
      required this.entryLog});

  factory _$ProfileWithTicketAndEntryLogViewImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileWithTicketAndEntryLogViewImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final ProfileTable profile;
  @override
  final Ticket? ticket;
  @override
  final EntryLog? entryLog;

  @override
  String toString() {
    return 'ProfileWithTicketAndEntryLogView(id: $id, email: $email, profile: $profile, ticket: $ticket, entryLog: $entryLog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileWithTicketAndEntryLogViewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.entryLog, entryLog) ||
                other.entryLog == entryLog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, profile, ticket, entryLog);

  /// Create a copy of ProfileWithTicketAndEntryLogView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileWithTicketAndEntryLogViewImplCopyWith<
          _$ProfileWithTicketAndEntryLogViewImpl>
      get copyWith => __$$ProfileWithTicketAndEntryLogViewImplCopyWithImpl<
          _$ProfileWithTicketAndEntryLogViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileWithTicketAndEntryLogViewImplToJson(
      this,
    );
  }
}

abstract class _ProfileWithTicketAndEntryLogView
    implements ProfileWithTicketAndEntryLogView {
  const factory _ProfileWithTicketAndEntryLogView(
          {required final String id,
          required final String email,
          required final ProfileTable profile,
          required final Ticket? ticket,
          required final EntryLog? entryLog}) =
      _$ProfileWithTicketAndEntryLogViewImpl;

  factory _ProfileWithTicketAndEntryLogView.fromJson(
          Map<String, dynamic> json) =
      _$ProfileWithTicketAndEntryLogViewImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  ProfileTable get profile;
  @override
  Ticket? get ticket;
  @override
  EntryLog? get entryLog;

  /// Create a copy of ProfileWithTicketAndEntryLogView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileWithTicketAndEntryLogViewImplCopyWith<
          _$ProfileWithTicketAndEntryLogViewImpl>
      get copyWith => throw _privateConstructorUsedError;
}
