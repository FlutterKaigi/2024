// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntryLog _$EntryLogFromJson(Map<String, dynamic> json) {
  return _EntryLog.fromJson(json);
}

/// @nodoc
mixin _$EntryLog {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this EntryLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntryLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntryLogCopyWith<EntryLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryLogCopyWith<$Res> {
  factory $EntryLogCopyWith(EntryLog value, $Res Function(EntryLog) then) =
      _$EntryLogCopyWithImpl<$Res, EntryLog>;
  @useResult
  $Res call({String id, DateTime createdAt});
}

/// @nodoc
class _$EntryLogCopyWithImpl<$Res, $Val extends EntryLog>
    implements $EntryLogCopyWith<$Res> {
  _$EntryLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntryLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntryLogImplCopyWith<$Res>
    implements $EntryLogCopyWith<$Res> {
  factory _$$EntryLogImplCopyWith(
          _$EntryLogImpl value, $Res Function(_$EntryLogImpl) then) =
      __$$EntryLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime createdAt});
}

/// @nodoc
class __$$EntryLogImplCopyWithImpl<$Res>
    extends _$EntryLogCopyWithImpl<$Res, _$EntryLogImpl>
    implements _$$EntryLogImplCopyWith<$Res> {
  __$$EntryLogImplCopyWithImpl(
      _$EntryLogImpl _value, $Res Function(_$EntryLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntryLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
  }) {
    return _then(_$EntryLogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntryLogImpl implements _EntryLog {
  const _$EntryLogImpl({required this.id, required this.createdAt});

  factory _$EntryLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntryLogImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'EntryLog(id: $id, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt);

  /// Create a copy of EntryLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryLogImplCopyWith<_$EntryLogImpl> get copyWith =>
      __$$EntryLogImplCopyWithImpl<_$EntryLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntryLogImplToJson(
      this,
    );
  }
}

abstract class _EntryLog implements EntryLog {
  const factory _EntryLog(
      {required final String id,
      required final DateTime createdAt}) = _$EntryLogImpl;

  factory _EntryLog.fromJson(Map<String, dynamic> json) =
      _$EntryLogImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;

  /// Create a copy of EntryLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntryLogImplCopyWith<_$EntryLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
