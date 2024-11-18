// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'payment_refund_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentRefundResponseImpl _$$PaymentRefundResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PaymentRefundResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$PaymentRefundResponseImpl(
          refund: $checkedConvert('refund', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PaymentRefundResponseImplToJson(
        _$PaymentRefundResponseImpl instance) =>
    <String, dynamic>{
      'refund': instance.refund,
    };
