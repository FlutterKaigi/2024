// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionImpl(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          startsAt:
              $checkedConvert('starts_at', (v) => DateTime.parse(v as String)),
          endsAt:
              $checkedConvert('ends_at', (v) => DateTime.parse(v as String)),
          venueId: $checkedConvert('venue_id', (v) => v as String),
          sponsorId: $checkedConvert('sponsor_id', (v) => (v as num?)?.toInt()),
          isLightningTalk:
              $checkedConvert('is_lightning_talk', (v) => v as bool),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'startsAt': 'starts_at',
        'endsAt': 'ends_at',
        'venueId': 'venue_id',
        'sponsorId': 'sponsor_id',
        'isLightningTalk': 'is_lightning_talk',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'starts_at': instance.startsAt.toIso8601String(),
      'ends_at': instance.endsAt.toIso8601String(),
      'venue_id': instance.venueId,
      'sponsor_id': instance.sponsorId,
      'is_lightning_talk': instance.isLightningTalk,
      'created_at': instance.createdAt.toIso8601String(),
    };
