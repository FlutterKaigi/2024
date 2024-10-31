// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session_venues_with_sessions_v2_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionVenuesWithSessionsV2ViewImpl
    _$$SessionVenuesWithSessionsV2ViewImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$SessionVenuesWithSessionsV2ViewImpl',
          json,
          ($checkedConvert) {
            final val = _$SessionVenuesWithSessionsV2ViewImpl(
              id: $checkedConvert('id', (v) => v as String),
              name: $checkedConvert('name', (v) => v as String),
              sessions: $checkedConvert(
                  'sessions',
                  (v) => (v as List<dynamic>)
                      .map((e) => SessionsWithSpeakerSponsorV2View.fromJson(
                          e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$$SessionVenuesWithSessionsV2ViewImplToJson(
        _$SessionVenuesWithSessionsV2ViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sessions': instance.sessions,
    };

_$SessionsWithSpeakerSponsorV2ViewImpl
    _$$SessionsWithSpeakerSponsorV2ViewImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$SessionsWithSpeakerSponsorV2ViewImpl',
          json,
          ($checkedConvert) {
            final val = _$SessionsWithSpeakerSponsorV2ViewImpl(
              id: $checkedConvert('id', (v) => v as String),
              title: $checkedConvert('title', (v) => v as String),
              description: $checkedConvert('description', (v) => v as String),
              startsAt: $checkedConvert(
                  'starts_at', (v) => DateTime.parse(v as String)),
              endsAt: $checkedConvert(
                  'ends_at', (v) => DateTime.parse(v as String)),
              isLightningTalk:
                  $checkedConvert('is_lightning_talk', (v) => v as bool),
              speakers: $checkedConvert(
                  'speakers',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          SpeakerTable.fromJson(e as Map<String, dynamic>))
                      .toList()),
              sponsors: $checkedConvert(
                  'sponsors',
                  (v) => (v as List<dynamic>)
                      .map((e) =>
                          SponsorTable.fromJson(e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
          fieldKeyMap: const {
            'startsAt': 'starts_at',
            'endsAt': 'ends_at',
            'isLightningTalk': 'is_lightning_talk'
          },
        );

Map<String, dynamic> _$$SessionsWithSpeakerSponsorV2ViewImplToJson(
        _$SessionsWithSpeakerSponsorV2ViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'starts_at': instance.startsAt.toIso8601String(),
      'ends_at': instance.endsAt.toIso8601String(),
      'is_lightning_talk': instance.isLightningTalk,
      'speakers': instance.speakers,
      'sponsors': instance.sponsors,
    };

_$SessionVenuesWithSessionsV2Impl _$$SessionVenuesWithSessionsV2ImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionVenuesWithSessionsV2Impl',
      json,
      ($checkedConvert) {
        final val = _$SessionVenuesWithSessionsV2Impl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          sessions: $checkedConvert(
              'sessions',
              (v) => (v as List<dynamic>)
                  .map((e) => SessionsWithSpeakerSponsorV2.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SessionVenuesWithSessionsV2ImplToJson(
        _$SessionVenuesWithSessionsV2Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sessions': instance.sessions,
    };

_$SessionsWithSpeakerSponsorV2Impl _$$SessionsWithSpeakerSponsorV2ImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionsWithSpeakerSponsorV2Impl',
      json,
      ($checkedConvert) {
        final val = _$SessionsWithSpeakerSponsorV2Impl(
          id: $checkedConvert('id', (v) => v as String),
          title: $checkedConvert('title', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          startsAt:
              $checkedConvert('starts_at', (v) => DateTime.parse(v as String)),
          endsAt:
              $checkedConvert('ends_at', (v) => DateTime.parse(v as String)),
          isLightningTalk:
              $checkedConvert('is_lightning_talk', (v) => v as bool),
          speakers: $checkedConvert(
              'speakers',
              (v) => (v as List<dynamic>)
                  .map((e) => Speaker.fromJson(e as Map<String, dynamic>))
                  .toList()),
          sponsors: $checkedConvert(
              'sponsors',
              (v) => (v as List<dynamic>)
                  .map((e) => Sponsor.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'startsAt': 'starts_at',
        'endsAt': 'ends_at',
        'isLightningTalk': 'is_lightning_talk'
      },
    );

Map<String, dynamic> _$$SessionsWithSpeakerSponsorV2ImplToJson(
        _$SessionsWithSpeakerSponsorV2Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'starts_at': instance.startsAt.toIso8601String(),
      'ends_at': instance.endsAt.toIso8601String(),
      'is_lightning_talk': instance.isLightningTalk,
      'speakers': instance.speakers,
      'sponsors': instance.sponsors,
    };
