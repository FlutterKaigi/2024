// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'promotion_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionMetadataGeneralImpl _$$PromotionMetadataGeneralImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PromotionMetadataGeneralImpl',
      json,
      ($checkedConvert) {
        final val = _$PromotionMetadataGeneralImpl(
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$PromotionMetadataGeneralImplToJson(
        _$PromotionMetadataGeneralImpl instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$PromotionMetadataSessionImpl _$$PromotionMetadataSessionImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PromotionMetadataSessionImpl',
      json,
      ($checkedConvert) {
        final val = _$PromotionMetadataSessionImpl(
          sessionId: $checkedConvert('sessionId', (v) => v as String),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$PromotionMetadataSessionImplToJson(
        _$PromotionMetadataSessionImpl instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'type': instance.$type,
    };

_$PromotionMetadataSponsorImpl _$$PromotionMetadataSponsorImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$PromotionMetadataSponsorImpl',
      json,
      ($checkedConvert) {
        final val = _$PromotionMetadataSponsorImpl(
          sponsorId: $checkedConvert('sponsorId', (v) => (v as num).toInt()),
          $type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {r'$type': 'type'},
    );

Map<String, dynamic> _$$PromotionMetadataSponsorImplToJson(
        _$PromotionMetadataSponsorImpl instance) =>
    <String, dynamic>{
      'sponsorId': instance.sponsorId,
      'type': instance.$type,
    };

_$PromotionMetadataSponsorSessionImpl
    _$$PromotionMetadataSponsorSessionImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$PromotionMetadataSponsorSessionImpl',
          json,
          ($checkedConvert) {
            final val = _$PromotionMetadataSponsorSessionImpl(
              sponsorId:
                  $checkedConvert('sponsorId', (v) => (v as num).toInt()),
              sessionId: $checkedConvert('sessionId', (v) => v as String),
              $type: $checkedConvert('type', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {r'$type': 'type'},
        );

Map<String, dynamic> _$$PromotionMetadataSponsorSessionImplToJson(
        _$PromotionMetadataSponsorSessionImpl instance) =>
    <String, dynamic>{
      'sponsorId': instance.sponsorId,
      'sessionId': instance.sessionId,
      'type': instance.$type,
    };
