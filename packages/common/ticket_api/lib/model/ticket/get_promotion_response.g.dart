// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'get_promotion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPromotionResponseImpl _$$GetPromotionResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$GetPromotionResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$GetPromotionResponseImpl(
          metadata: $checkedConvert('metadata',
              (v) => PromotionMetadata.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$GetPromotionResponseImplToJson(
        _$GetPromotionResponseImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
    };
