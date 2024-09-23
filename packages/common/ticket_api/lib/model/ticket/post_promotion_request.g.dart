// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'post_promotion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPromotionRequestImpl _$$PostPromotionRequestImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PostPromotionRequestImpl',
      json,
      ($checkedConvert) {
        final val = _$PostPromotionRequestImpl(
          metadata: $checkedConvert('metadata',
              (v) => PromotionMetadata.fromJson(v as Map<String, dynamic>)),
          maxRedemptions:
              $checkedConvert('maxRedemptions', (v) => (v as num).toInt()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostPromotionRequestImplToJson(
        _$PostPromotionRequestImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'maxRedemptions': instance.maxRedemptions,
    };
