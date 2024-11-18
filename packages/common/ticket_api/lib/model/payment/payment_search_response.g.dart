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
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>)
                  .map((e) => PaymentResult.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PaymentSearchResponseImplToJson(
        _$PaymentSearchResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$PaymentResultImpl _$$PaymentResultImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PaymentResultImpl',
      json,
      ($checkedConvert) {
        final val = _$PaymentResultImpl(
          paymentIntent: $checkedConvert('payment_intent', (v) => v as String),
          amount: $checkedConvert('amount', (v) => (v as num).toInt()),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'paymentIntent': 'payment_intent',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$PaymentResultImplToJson(_$PaymentResultImpl instance) =>
    <String, dynamic>{
      'payment_intent': instance.paymentIntent,
      'amount': instance.amount,
      'created_at': instance.createdAt.toIso8601String(),
    };
