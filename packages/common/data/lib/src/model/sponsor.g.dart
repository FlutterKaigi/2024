// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SponsorImpl _$$SponsorImplFromJson(Map<String, dynamic> json) =>
    _$SponsorImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      logoName: json['logoName'] as String,
      description: json['description'] as String,
      url: json['url'] as String?,
      type: $enumDecode(_$SponsorTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$SponsorImplToJson(_$SponsorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoName': instance.logoName,
      'description': instance.description,
      'url': instance.url,
      'type': _$SponsorTypeEnumMap[instance.type]!,
    };

const _$SponsorTypeEnumMap = {
  SponsorType.platinum: 'platinum',
  SponsorType.gold: 'gold',
  SponsorType.silver: 'silver',
  SponsorType.bronze: 'bronze',
};
