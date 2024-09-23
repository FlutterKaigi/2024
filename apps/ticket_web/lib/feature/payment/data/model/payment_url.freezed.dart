// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentUrl _$PaymentUrlFromJson(Map<String, dynamic> json) {
  return _PaymentUrl.fromJson(json);
}

/// @nodoc
mixin _$PaymentUrl {
  String get general => throw _privateConstructorUsedError;
  String get invitation => throw _privateConstructorUsedError;

  /// Serializes this PaymentUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentUrlCopyWith<PaymentUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentUrlCopyWith<$Res> {
  factory $PaymentUrlCopyWith(
          PaymentUrl value, $Res Function(PaymentUrl) then) =
      _$PaymentUrlCopyWithImpl<$Res, PaymentUrl>;
  @useResult
  $Res call({String general, String invitation});
}

/// @nodoc
class _$PaymentUrlCopyWithImpl<$Res, $Val extends PaymentUrl>
    implements $PaymentUrlCopyWith<$Res> {
  _$PaymentUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? general = null,
    Object? invitation = null,
  }) {
    return _then(_value.copyWith(
      general: null == general
          ? _value.general
          : general // ignore: cast_nullable_to_non_nullable
              as String,
      invitation: null == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentUrlImplCopyWith<$Res>
    implements $PaymentUrlCopyWith<$Res> {
  factory _$$PaymentUrlImplCopyWith(
          _$PaymentUrlImpl value, $Res Function(_$PaymentUrlImpl) then) =
      __$$PaymentUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String general, String invitation});
}

/// @nodoc
class __$$PaymentUrlImplCopyWithImpl<$Res>
    extends _$PaymentUrlCopyWithImpl<$Res, _$PaymentUrlImpl>
    implements _$$PaymentUrlImplCopyWith<$Res> {
  __$$PaymentUrlImplCopyWithImpl(
      _$PaymentUrlImpl _value, $Res Function(_$PaymentUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? general = null,
    Object? invitation = null,
  }) {
    return _then(_$PaymentUrlImpl(
      general: null == general
          ? _value.general
          : general // ignore: cast_nullable_to_non_nullable
              as String,
      invitation: null == invitation
          ? _value.invitation
          : invitation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentUrlImpl implements _PaymentUrl {
  const _$PaymentUrlImpl({required this.general, required this.invitation});

  factory _$PaymentUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentUrlImplFromJson(json);

  @override
  final String general;
  @override
  final String invitation;

  @override
  String toString() {
    return 'PaymentUrl(general: $general, invitation: $invitation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentUrlImpl &&
            (identical(other.general, general) || other.general == general) &&
            (identical(other.invitation, invitation) ||
                other.invitation == invitation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, general, invitation);

  /// Create a copy of PaymentUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentUrlImplCopyWith<_$PaymentUrlImpl> get copyWith =>
      __$$PaymentUrlImplCopyWithImpl<_$PaymentUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentUrlImplToJson(
      this,
    );
  }
}

abstract class _PaymentUrl implements PaymentUrl {
  const factory _PaymentUrl(
      {required final String general,
      required final String invitation}) = _$PaymentUrlImpl;

  factory _PaymentUrl.fromJson(Map<String, dynamic> json) =
      _$PaymentUrlImpl.fromJson;

  @override
  String get general;
  @override
  String get invitation;

  /// Create a copy of PaymentUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentUrlImplCopyWith<_$PaymentUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
