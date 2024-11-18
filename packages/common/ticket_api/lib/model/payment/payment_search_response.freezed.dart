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
  List<PaymentResult> get results => throw _privateConstructorUsedError;

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
  $Res call({List<PaymentResult> results});
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
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PaymentResult>,
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
  $Res call({List<PaymentResult> results});
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
    Object? results = null,
  }) {
    return _then(_$PaymentSearchResponseImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PaymentResult>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentSearchResponseImpl implements _PaymentSearchResponse {
  const _$PaymentSearchResponseImpl(
      {required final List<PaymentResult> results})
      : _results = results;

  factory _$PaymentSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentSearchResponseImplFromJson(json);

  final List<PaymentResult> _results;
  @override
  List<PaymentResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PaymentSearchResponse(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSearchResponseImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

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
          {required final List<PaymentResult> results}) =
      _$PaymentSearchResponseImpl;

  factory _PaymentSearchResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentSearchResponseImpl.fromJson;

  @override
  List<PaymentResult> get results;

  /// Create a copy of PaymentSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentSearchResponseImplCopyWith<_$PaymentSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentResult _$PaymentResultFromJson(Map<String, dynamic> json) {
  return _PaymentResult.fromJson(json);
}

/// @nodoc
mixin _$PaymentResult {
  String get paymentIntent => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentResultCopyWith<PaymentResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResultCopyWith<$Res> {
  factory $PaymentResultCopyWith(
          PaymentResult value, $Res Function(PaymentResult) then) =
      _$PaymentResultCopyWithImpl<$Res, PaymentResult>;
  @useResult
  $Res call({String paymentIntent, int amount, DateTime createdAt});
}

/// @nodoc
class _$PaymentResultCopyWithImpl<$Res, $Val extends PaymentResult>
    implements $PaymentResultCopyWith<$Res> {
  _$PaymentResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentIntent = null,
    Object? amount = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      paymentIntent: null == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentResultImplCopyWith<$Res>
    implements $PaymentResultCopyWith<$Res> {
  factory _$$PaymentResultImplCopyWith(
          _$PaymentResultImpl value, $Res Function(_$PaymentResultImpl) then) =
      __$$PaymentResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String paymentIntent, int amount, DateTime createdAt});
}

/// @nodoc
class __$$PaymentResultImplCopyWithImpl<$Res>
    extends _$PaymentResultCopyWithImpl<$Res, _$PaymentResultImpl>
    implements _$$PaymentResultImplCopyWith<$Res> {
  __$$PaymentResultImplCopyWithImpl(
      _$PaymentResultImpl _value, $Res Function(_$PaymentResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentIntent = null,
    Object? amount = null,
    Object? createdAt = null,
  }) {
    return _then(_$PaymentResultImpl(
      paymentIntent: null == paymentIntent
          ? _value.paymentIntent
          : paymentIntent // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResultImpl implements _PaymentResult {
  const _$PaymentResultImpl(
      {required this.paymentIntent,
      required this.amount,
      required this.createdAt});

  factory _$PaymentResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResultImplFromJson(json);

  @override
  final String paymentIntent;
  @override
  final int amount;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PaymentResult(paymentIntent: $paymentIntent, amount: $amount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResultImpl &&
            (identical(other.paymentIntent, paymentIntent) ||
                other.paymentIntent == paymentIntent) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentIntent, amount, createdAt);

  /// Create a copy of PaymentResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResultImplCopyWith<_$PaymentResultImpl> get copyWith =>
      __$$PaymentResultImplCopyWithImpl<_$PaymentResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResultImplToJson(
      this,
    );
  }
}

abstract class _PaymentResult implements PaymentResult {
  const factory _PaymentResult(
      {required final String paymentIntent,
      required final int amount,
      required final DateTime createdAt}) = _$PaymentResultImpl;

  factory _PaymentResult.fromJson(Map<String, dynamic> json) =
      _$PaymentResultImpl.fromJson;

  @override
  String get paymentIntent;
  @override
  int get amount;
  @override
  DateTime get createdAt;

  /// Create a copy of PaymentResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentResultImplCopyWith<_$PaymentResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
