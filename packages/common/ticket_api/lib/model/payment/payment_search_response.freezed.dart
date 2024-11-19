// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentSearchResponse _$PaymentSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentSearchResponse {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get cardLast4 => throw _privateConstructorUsedError;

  /// Serializes this PaymentSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentSearchResponseCopyWith<PaymentSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentSearchResponseCopyWith<$Res> {
  factory $PaymentSearchResponseCopyWith(PaymentSearchResponse value,
          $Res Function(PaymentSearchResponse) then) =
      _$PaymentSearchResponseCopyWithImpl<$Res, PaymentSearchResponse>;
  @useResult
  $Res call(
      {String id,
      int amount,
      String currency,
      DateTime createdAt,
      String? cardLast4});
}

/// @nodoc
class _$PaymentSearchResponseCopyWithImpl<$Res,
        $Val extends PaymentSearchResponse>
    implements $PaymentSearchResponseCopyWith<$Res> {
  _$PaymentSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? createdAt = null,
    Object? cardLast4 = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cardLast4: freezed == cardLast4
          ? _value.cardLast4
          : cardLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentSearchResponseImplCopyWith<$Res>
    implements $PaymentSearchResponseCopyWith<$Res> {
  factory _$$PaymentSearchResponseImplCopyWith(
          _$PaymentSearchResponseImpl value,
          $Res Function(_$PaymentSearchResponseImpl) then) =
      __$$PaymentSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int amount,
      String currency,
      DateTime createdAt,
      String? cardLast4});
}

/// @nodoc
class __$$PaymentSearchResponseImplCopyWithImpl<$Res>
    extends _$PaymentSearchResponseCopyWithImpl<$Res,
        _$PaymentSearchResponseImpl>
    implements _$$PaymentSearchResponseImplCopyWith<$Res> {
  __$$PaymentSearchResponseImplCopyWithImpl(_$PaymentSearchResponseImpl _value,
      $Res Function(_$PaymentSearchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? currency = null,
    Object? createdAt = null,
    Object? cardLast4 = freezed,
  }) {
    return _then(_$PaymentSearchResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cardLast4: freezed == cardLast4
          ? _value.cardLast4
          : cardLast4 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentSearchResponseImpl implements _PaymentSearchResponse {
  const _$PaymentSearchResponseImpl(
      {required this.id,
      required this.amount,
      required this.currency,
      required this.createdAt,
      this.cardLast4});

  factory _$PaymentSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentSearchResponseImplFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final String currency;
  @override
  final DateTime createdAt;
  @override
  final String? cardLast4;

  @override
  String toString() {
    return 'PaymentSearchResponse(id: $id, amount: $amount, currency: $currency, createdAt: $createdAt, cardLast4: $cardLast4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSearchResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.cardLast4, cardLast4) ||
                other.cardLast4 == cardLast4));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, currency, createdAt, cardLast4);

  /// Create a copy of PaymentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSearchResponseImplCopyWith<_$PaymentSearchResponseImpl>
      get copyWith => __$$PaymentSearchResponseImplCopyWithImpl<
          _$PaymentSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentSearchResponse implements PaymentSearchResponse {
  const factory _PaymentSearchResponse(
      {required final String id,
      required final int amount,
      required final String currency,
      required final DateTime createdAt,
      final String? cardLast4}) = _$PaymentSearchResponseImpl;

  factory _PaymentSearchResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentSearchResponseImpl.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  String get currency;
  @override
  DateTime get createdAt;
  @override
  String? get cardLast4;

  /// Create a copy of PaymentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentSearchResponseImplCopyWith<_$PaymentSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
