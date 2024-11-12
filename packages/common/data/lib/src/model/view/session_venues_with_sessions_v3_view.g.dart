// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session_venues_with_sessions_v3_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionVenuesWithSessionsV3ViewImpl
    _$$SessionVenuesWithSessionsV3ViewImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$SessionVenuesWithSessionsV3ViewImpl',
          json,
          ($checkedConvert) {
            final val = _$SessionVenuesWithSessionsV3ViewImpl(
              id: $checkedConvert('id', (v) => v as String),
              name: $checkedConvert('name', (v) => v as String),
              sessions: $checkedConvert(
                  'sessions',
                  (v) => (v as List<dynamic>)
                      .map((e) => SessionsWithSpeakerSponsorV3View.fromJson(
                          e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$$SessionVenuesWithSessionsV3ViewImplToJson(
        _$SessionVenuesWithSessionsV3ViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sessions': instance.sessions,
    };

_$SessionsWithSpeakerSponsorV3ViewImpl
    _$$SessionsWithSpeakerSponsorV3ViewImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$SessionsWithSpeakerSponsorV3ViewImpl',
          json,
          ($checkedConvert) {
            final val = _$SessionsWithSpeakerSponsorV3ViewImpl(
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
                          SponsorV2Table.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$SessionsWithSpeakerSponsorV3ViewImplToJson(
        _$SessionsWithSpeakerSponsorV3ViewImpl instance) =>
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

_$SessionVenuesWithSessionsV3Impl _$$SessionVenuesWithSessionsV3ImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionVenuesWithSessionsV3Impl',
      json,
      ($checkedConvert) {
        final val = _$SessionVenuesWithSessionsV3Impl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          sessions: $checkedConvert(
              'sessions',
              (v) => (v as List<dynamic>)
                  .map((e) => SessionsWithSpeakerSponsorV3.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SessionVenuesWithSessionsV3ImplToJson(
        _$SessionVenuesWithSessionsV3Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sessions': instance.sessions,
    };

_$SessionsWithSpeakerSponsorV3Impl _$$SessionsWithSpeakerSponsorV3ImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionsWithSpeakerSponsorV3Impl',
      json,
      ($checkedConvert) {
        final val = _$SessionsWithSpeakerSponsorV3Impl(
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
                  .map((e) => SponsorV2.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$SessionsWithSpeakerSponsorV3ImplToJson(
        _$SessionsWithSpeakerSponsorV3Impl instance) =>
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
