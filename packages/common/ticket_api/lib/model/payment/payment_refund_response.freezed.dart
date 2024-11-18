// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_refund_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentRefundResponse _$PaymentRefundResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentRefundResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentRefundResponse {
  String get refund => throw _privateConstructorUsedError;

  /// Serializes this PaymentRefundResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentRefundResponseCopyWith<PaymentRefundResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRefundResponseCopyWith<$Res> {
  factory $PaymentRefundResponseCopyWith(PaymentRefundResponse value,
          $Res Function(PaymentRefundResponse) then) =
      _$PaymentRefundResponseCopyWithImpl<$Res, PaymentRefundResponse>;
  @useResult
  $Res call({String refund});
}

/// @nodoc
class _$PaymentRefundResponseCopyWithImpl<$Res,
        $Val extends PaymentRefundResponse>
    implements $PaymentRefundResponseCopyWith<$Res> {
  _$PaymentRefundResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refund = null,
  }) {
    return _then(_value.copyWith(
      refund: null == refund
          ? _value.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentRefundResponseImplCopyWith<$Res>
    implements $PaymentRefundResponseCopyWith<$Res> {
  factory _$$PaymentRefundResponseImplCopyWith(
          _$PaymentRefundResponseImpl value,
          $Res Function(_$PaymentRefundResponseImpl) then) =
      __$$PaymentRefundResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refund});
}

/// @nodoc
class __$$PaymentRefundResponseImplCopyWithImpl<$Res>
    extends _$PaymentRefundResponseCopyWithImpl<$Res,
        _$PaymentRefundResponseImpl>
    implements _$$PaymentRefundResponseImplCopyWith<$Res> {
  __$$PaymentRefundResponseImplCopyWithImpl(_$PaymentRefundResponseImpl _value,
      $Res Function(_$PaymentRefundResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refund = null,
  }) {
    return _then(_$PaymentRefundResponseImpl(
      refund: null == refund
          ? _value.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentRefundResponseImpl implements _PaymentRefundResponse {
  const _$PaymentRefundResponseImpl({required this.refund});

  factory _$PaymentRefundResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentRefundResponseImplFromJson(json);

  @override
  final String refund;

  @override
  String toString() {
    return 'PaymentRefundResponse(refund: $refund)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentRefundResponseImpl &&
            (identical(other.refund, refund) || other.refund == refund));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refund);

  /// Create a copy of PaymentRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentRefundResponseImplCopyWith<_$PaymentRefundResponseImpl>
      get copyWith => __$$PaymentRefundResponseImplCopyWithImpl<
          _$PaymentRefundResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentRefundResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentRefundResponse implements PaymentRefundResponse {
  const factory _PaymentRefundResponse({required final String refund}) =
      _$PaymentRefundResponseImpl;

  factory _PaymentRefundResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentRefundResponseImpl.fromJson;

  @override
  String get refund;

  /// Create a copy of PaymentRefundResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentRefundResponseImplCopyWith<_$PaymentRefundResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
