// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'verify_purchase_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPurchaseResponseImpl _$$VerifyPurchaseResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$VerifyPurchaseResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$VerifyPurchaseResponseImpl(
          ticket: $checkedConvert(
              'ticket', (v) => Ticket.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$VerifyPurchaseResponseImplToJson(
        _$VerifyPurchaseResponseImpl instance) =>
    <String, dynamic>{
      'ticket': instance.ticket,
    };
