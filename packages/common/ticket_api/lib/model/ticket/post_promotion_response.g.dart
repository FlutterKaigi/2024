// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'post_promotion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostPromotionResponseImpl _$$PostPromotionResponseImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PostPromotionResponseImpl',
      json,
      ($checkedConvert) {
        final val = _$PostPromotionResponseImpl(
          id: $checkedConvert('id', (v) => v as String),
          code: $checkedConvert('code', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PostPromotionResponseImplToJson(
        _$PostPromotionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
    };
