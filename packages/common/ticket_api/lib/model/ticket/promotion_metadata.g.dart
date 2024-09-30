// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'promotion_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionMetadataImpl _$$PromotionMetadataImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PromotionMetadataImpl',
      json,
      ($checkedConvert) {
        final val = _$PromotionMetadataImpl(
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$PromotionMetadataTypeEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$PromotionMetadataImplToJson(
        _$PromotionMetadataImpl instance) =>
    <String, dynamic>{
      'type': _$PromotionMetadataTypeEnumMap[instance.type]!,
    };

const _$PromotionMetadataTypeEnumMap = {
  PromotionMetadataType.general: 'general',
  PromotionMetadataType.session: 'session',
  PromotionMetadataType.sponsor: 'sponsor',
  PromotionMetadataType.sponsorSession: 'sponsorSession',
};
