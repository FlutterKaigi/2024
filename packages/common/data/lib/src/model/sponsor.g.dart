// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sponsor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SponsorImpl _$$SponsorImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorImpl',
      json,
      ($checkedConvert) {
        final val = _$SponsorImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          logoUrl: $checkedConvert('logo_url', (v) => Uri.parse(v as String)),
          description: $checkedConvert('description', (v) => v as String),
          url: $checkedConvert(
              'url', (v) => v == null ? null : Uri.parse(v as String)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SponsorTypeEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'logoUrl': 'logo_url'},
    );

Map<String, dynamic> _$$SponsorImplToJson(_$SponsorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_url': instance.logoUrl.toString(),
      'description': instance.description,
      'url': instance.url?.toString(),
      'type': _$SponsorTypeEnumMap[instance.type]!,
    };

const _$SponsorTypeEnumMap = {
  SponsorType.platinum: 'platinum',
  SponsorType.gold: 'gold',
  SponsorType.silver: 'silver',
  SponsorType.bronze: 'bronze',
};

_$SponsorV2Impl _$$SponsorV2ImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorV2Impl',
      json,
      ($checkedConvert) {
        final val = _$SponsorV2Impl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          logoUrl: $checkedConvert('logo_url', (v) => Uri.parse(v as String)),
          description: $checkedConvert('description', (v) => v as String),
          url: $checkedConvert(
              'url', (v) => v == null ? null : Uri.parse(v as String)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SponsorTypeV2EnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'logoUrl': 'logo_url'},
    );

Map<String, dynamic> _$$SponsorV2ImplToJson(_$SponsorV2Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_url': instance.logoUrl.toString(),
      'description': instance.description,
      'url': instance.url?.toString(),
      'type': _$SponsorTypeV2EnumMap[instance.type]!,
    };

const _$SponsorTypeV2EnumMap = {
  SponsorTypeV2.platinum: 'platinum',
  SponsorTypeV2.gold: 'gold',
  SponsorTypeV2.silver: 'silver',
  SponsorTypeV2.bronze: 'bronze',
  SponsorTypeV2.community: 'community',
  SponsorTypeV2.translation: 'translation',
};
