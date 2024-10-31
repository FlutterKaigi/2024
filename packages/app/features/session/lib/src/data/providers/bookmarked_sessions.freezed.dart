// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmarked_sessions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookmarkedSessionList _$BookmarkedSessionListFromJson(
    Map<String, dynamic> json) {
  return _BookmarkedSessionList.fromJson(json);
}

/// @nodoc
mixin _$BookmarkedSessionList {
  Set<String> get sessions => throw _privateConstructorUsedError;

  /// Serializes this BookmarkedSessionList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookmarkedSessionList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookmarkedSessionListCopyWith<BookmarkedSessionList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkedSessionListCopyWith<$Res> {
  factory $BookmarkedSessionListCopyWith(BookmarkedSessionList value,
          $Res Function(BookmarkedSessionList) then) =
      _$BookmarkedSessionListCopyWithImpl<$Res, BookmarkedSessionList>;
  @useResult
  $Res call({Set<String> sessions});
}

/// @nodoc
class _$BookmarkedSessionListCopyWithImpl<$Res,
        $Val extends BookmarkedSessionList>
    implements $BookmarkedSessionListCopyWith<$Res> {
  _$BookmarkedSessionListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookmarkedSessionList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_value.copyWith(
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookmarkedSessionListImplCopyWith<$Res>
    implements $BookmarkedSessionListCopyWith<$Res> {
  factory _$$BookmarkedSessionListImplCopyWith(
          _$BookmarkedSessionListImpl value,
          $Res Function(_$BookmarkedSessionListImpl) then) =
      __$$BookmarkedSessionListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> sessions});
}

/// @nodoc
class __$$BookmarkedSessionListImplCopyWithImpl<$Res>
    extends _$BookmarkedSessionListCopyWithImpl<$Res,
        _$BookmarkedSessionListImpl>
    implements _$$BookmarkedSessionListImplCopyWith<$Res> {
  __$$BookmarkedSessionListImplCopyWithImpl(_$BookmarkedSessionListImpl _value,
      $Res Function(_$BookmarkedSessionListImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookmarkedSessionList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
  }) {
    return _then(_$BookmarkedSessionListImpl(
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookmarkedSessionListImpl implements _BookmarkedSessionList {
  const _$BookmarkedSessionListImpl({final Set<String> sessions = const {}})
      : _sessions = sessions;

  factory _$BookmarkedSessionListImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkedSessionListImplFromJson(json);

  final Set<String> _sessions;
  @override
  @JsonKey()
  Set<String> get sessions {
    if (_sessions is EqualUnmodifiableSetView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_sessions);
  }

  @override
  String toString() {
    return 'BookmarkedSessionList(sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkedSessionListImpl &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sessions));

  /// Create a copy of BookmarkedSessionList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkedSessionListImplCopyWith<_$BookmarkedSessionListImpl>
      get copyWith => __$$BookmarkedSessionListImplCopyWithImpl<
          _$BookmarkedSessionListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkedSessionListImplToJson(
      this,
    );
  }
}

abstract class _BookmarkedSessionList implements BookmarkedSessionList {
  const factory _BookmarkedSessionList({final Set<String> sessions}) =
      _$BookmarkedSessionListImpl;

  factory _BookmarkedSessionList.fromJson(Map<String, dynamic> json) =
      _$BookmarkedSessionListImpl.fromJson;

  @override
  Set<String> get sessions;

  /// Create a copy of BookmarkedSessionList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookmarkedSessionListImplCopyWith<_$BookmarkedSessionListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
