// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

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
              $checkedConvert('max_redemptions', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {'maxRedemptions': 'max_redemptions'},
    );

Map<String, dynamic> _$$PostPromotionRequestImplToJson(
        _$PostPromotionRequestImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'max_redemptions': instance.maxRedemptions,
    };
