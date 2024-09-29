// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_purchase_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyPurchaseResponse _$VerifyPurchaseResponseFromJson(
    Map<String, dynamic> json) {
  return _VerifyPurchaseResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyPurchaseResponse {
  Ticket get ticket => throw _privateConstructorUsedError;

  /// Serializes this VerifyPurchaseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyPurchaseResponseCopyWith<VerifyPurchaseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPurchaseResponseCopyWith<$Res> {
  factory $VerifyPurchaseResponseCopyWith(VerifyPurchaseResponse value,
          $Res Function(VerifyPurchaseResponse) then) =
      _$VerifyPurchaseResponseCopyWithImpl<$Res, VerifyPurchaseResponse>;
  @useResult
  $Res call({Ticket ticket});

  $TicketCopyWith<$Res> get ticket;
}

/// @nodoc
class _$VerifyPurchaseResponseCopyWithImpl<$Res,
        $Val extends VerifyPurchaseResponse>
    implements $VerifyPurchaseResponseCopyWith<$Res> {
  _$VerifyPurchaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_value.copyWith(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ) as $Val);
  }

  /// Create a copy of VerifyPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TicketCopyWith<$Res> get ticket {
    return $TicketCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyPurchaseResponseImplCopyWith<$Res>
    implements $VerifyPurchaseResponseCopyWith<$Res> {
  factory _$$VerifyPurchaseResponseImplCopyWith(
          _$VerifyPurchaseResponseImpl value,
          $Res Function(_$VerifyPurchaseResponseImpl) then) =
      __$$VerifyPurchaseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ticket ticket});

  @override
  $TicketCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$VerifyPurchaseResponseImplCopyWithImpl<$Res>
    extends _$VerifyPurchaseResponseCopyWithImpl<$Res,
        _$VerifyPurchaseResponseImpl>
    implements _$$VerifyPurchaseResponseImplCopyWith<$Res> {
  __$$VerifyPurchaseResponseImplCopyWithImpl(
      _$VerifyPurchaseResponseImpl _value,
      $Res Function(_$VerifyPurchaseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerifyPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$VerifyPurchaseResponseImpl(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyPurchaseResponseImpl implements _VerifyPurchaseResponse {
  const _$VerifyPurchaseResponseImpl({required this.ticket});

  factory _$VerifyPurchaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyPurchaseResponseImplFromJson(json);

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'VerifyPurchaseResponse(ticket: $ticket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPurchaseResponseImpl &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  /// Create a copy of VerifyPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPurchaseResponseImplCopyWith<_$VerifyPurchaseResponseImpl>
      get copyWith => __$$VerifyPurchaseResponseImplCopyWithImpl<
          _$VerifyPurchaseResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyPurchaseResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifyPurchaseResponse implements VerifyPurchaseResponse {
  const factory _VerifyPurchaseResponse({required final Ticket ticket}) =
      _$VerifyPurchaseResponseImpl;

  factory _VerifyPurchaseResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyPurchaseResponseImpl.fromJson;

  @override
  Ticket get ticket;

  /// Create a copy of VerifyPurchaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyPurchaseResponseImplCopyWith<_$VerifyPurchaseResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
