// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Environment {
  String get supabaseUrl => throw _privateConstructorUsedError;
  String get supabaseAnonKey => throw _privateConstructorUsedError;
  String get ticketApiBaseUrl => throw _privateConstructorUsedError;
  EnvironmentType get environmentType => throw _privateConstructorUsedError;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res, Environment>;
  @useResult
  $Res call(
      {String supabaseUrl,
      String supabaseAnonKey,
      String ticketApiBaseUrl,
      EnvironmentType environmentType});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res, $Val extends Environment>
    implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supabaseUrl = null,
    Object? supabaseAnonKey = null,
    Object? ticketApiBaseUrl = null,
    Object? environmentType = null,
  }) {
    return _then(_value.copyWith(
      supabaseUrl: null == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      supabaseAnonKey: null == supabaseAnonKey
          ? _value.supabaseAnonKey
          : supabaseAnonKey // ignore: cast_nullable_to_non_nullable
              as String,
      ticketApiBaseUrl: null == ticketApiBaseUrl
          ? _value.ticketApiBaseUrl
          : ticketApiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      environmentType: null == environmentType
          ? _value.environmentType
          : environmentType // ignore: cast_nullable_to_non_nullable
              as EnvironmentType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$EnvironmentImplCopyWith(
          _$EnvironmentImpl value, $Res Function(_$EnvironmentImpl) then) =
      __$$EnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String supabaseUrl,
      String supabaseAnonKey,
      String ticketApiBaseUrl,
      EnvironmentType environmentType});
}

/// @nodoc
class __$$EnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$EnvironmentImpl>
    implements _$$EnvironmentImplCopyWith<$Res> {
  __$$EnvironmentImplCopyWithImpl(
      _$EnvironmentImpl _value, $Res Function(_$EnvironmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supabaseUrl = null,
    Object? supabaseAnonKey = null,
    Object? ticketApiBaseUrl = null,
    Object? environmentType = null,
  }) {
    return _then(_$EnvironmentImpl(
      supabaseUrl: null == supabaseUrl
          ? _value.supabaseUrl
          : supabaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      supabaseAnonKey: null == supabaseAnonKey
          ? _value.supabaseAnonKey
          : supabaseAnonKey // ignore: cast_nullable_to_non_nullable
              as String,
      ticketApiBaseUrl: null == ticketApiBaseUrl
          ? _value.ticketApiBaseUrl
          : ticketApiBaseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      environmentType: null == environmentType
          ? _value.environmentType
          : environmentType // ignore: cast_nullable_to_non_nullable
              as EnvironmentType,
    ));
  }
}

/// @nodoc

class _$EnvironmentImpl implements _Environment {
  const _$EnvironmentImpl(
      {required this.supabaseUrl,
      required this.supabaseAnonKey,
      required this.ticketApiBaseUrl,
      required this.environmentType});

  @override
  final String supabaseUrl;
  @override
  final String supabaseAnonKey;
  @override
  final String ticketApiBaseUrl;
  @override
  final EnvironmentType environmentType;

  @override
  String toString() {
    return 'Environment(supabaseUrl: $supabaseUrl, supabaseAnonKey: $supabaseAnonKey, ticketApiBaseUrl: $ticketApiBaseUrl, environmentType: $environmentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnvironmentImpl &&
            (identical(other.supabaseUrl, supabaseUrl) ||
                other.supabaseUrl == supabaseUrl) &&
            (identical(other.supabaseAnonKey, supabaseAnonKey) ||
                other.supabaseAnonKey == supabaseAnonKey) &&
            (identical(other.ticketApiBaseUrl, ticketApiBaseUrl) ||
                other.ticketApiBaseUrl == ticketApiBaseUrl) &&
            (identical(other.environmentType, environmentType) ||
                other.environmentType == environmentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, supabaseUrl, supabaseAnonKey,
      ticketApiBaseUrl, environmentType);

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      __$$EnvironmentImplCopyWithImpl<_$EnvironmentImpl>(this, _$identity);
}

abstract class _Environment implements Environment {
  const factory _Environment(
      {required final String supabaseUrl,
      required final String supabaseAnonKey,
      required final String ticketApiBaseUrl,
      required final EnvironmentType environmentType}) = _$EnvironmentImpl;

  @override
  String get supabaseUrl;
  @override
  String get supabaseAnonKey;
  @override
  String get ticketApiBaseUrl;
  @override
  EnvironmentType get environmentType;

  /// Create a copy of Environment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
