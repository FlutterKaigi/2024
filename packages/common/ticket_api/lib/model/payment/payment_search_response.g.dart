// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'payment_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentSearchResponseImpl _$$PaymentSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PaymentSearchResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$PaymentSearchResponseImpl(
          id: $checkedConvert('id', (v) => v as String),
          amount: $checkedConvert('amount', (v) => (v as num).toInt()),
          currency: $checkedConvert('currency', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          cardLast4: $checkedConvert('card_last4', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at', 'cardLast4': 'card_last4'},
    );

Map<String, dynamic> _$$PaymentSearchResponseImplToJson(
        _$PaymentSearchResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'currency': instance.currency,
      'created_at': instance.createdAt.toIso8601String(),
      'card_last4': instance.cardLast4,
    };
