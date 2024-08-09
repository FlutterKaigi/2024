// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sponsor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SponsorListImpl _$$SponsorListImplFromJson(Map<String, dynamic> json) =>
    _$SponsorListImpl(
      platinum: (json['platinum'] as List<dynamic>)
          .map((e) => Sponsor.fromJson(e as Map<String, dynamic>))
          .toList(),
      gold: (json['gold'] as List<dynamic>)
          .map((e) => Sponsor.fromJson(e as Map<String, dynamic>))
          .toList(),
      silver: (json['silver'] as List<dynamic>)
          .map((e) => Sponsor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SponsorListImplToJson(_$SponsorListImpl instance) =>
    <String, dynamic>{
      'platinum': instance.platinum,
      'gold': instance.gold,
      'silver': instance.silver,
    };

_$SponsorImpl _$$SponsorImplFromJson(Map<String, dynamic> json) =>
    _$SponsorImpl(
      sponsorName: json['sponsorName'] as String,
      sponsorLinkUrl: json['sponsorLinkUrl'] as String,
      sponsorLogoUrl: json['sponsorLogoUrl'] as String,
      sponsorDescription: json['sponsorDescription'] as String,
    );

Map<String, dynamic> _$$SponsorImplToJson(_$SponsorImpl instance) =>
    <String, dynamic>{
      'sponsorName': instance.sponsorName,
      'sponsorLinkUrl': instance.sponsorLinkUrl,
      'sponsorLogoUrl': instance.sponsorLogoUrl,
      'sponsorDescription': instance.sponsorDescription,
    };
