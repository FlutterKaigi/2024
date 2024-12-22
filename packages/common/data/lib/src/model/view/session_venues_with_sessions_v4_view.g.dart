// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session_venues_with_sessions_v4_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionVenuesWithSessionsV4ViewImpl
    _$$SessionVenuesWithSessionsV4ViewImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$SessionVenuesWithSessionsV4ViewImpl',
          json,
          ($checkedConvert) {
            final val = _$SessionVenuesWithSessionsV4ViewImpl(
              id: $checkedConvert('id', (v) => v as String),
              name: $checkedConvert('name', (v) => v as String),
              sessions: $checkedConvert(
                  'sessions',
                  (v) => (v as List<dynamic>)
                      .map((e) => SessionsWithSpeakerSponsorV4View.fromJson(
                          e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$$SessionVenuesWithSessionsV4ViewImplToJson(
        _$SessionVenuesWithSessionsV4ViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sessions': instance.sessions,
    };

_$SessionsWithSpeakerSponsorV4ViewImpl
    _$$SessionsWithSpeakerSponsorV4ViewImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$SessionsWithSpeakerSponsorV4ViewImpl',
          json,
          ($checkedConvert) {
            final val = _$SessionsWithSpeakerSponsorV4ViewImpl(
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
              videoUrl: $checkedConvert(
                  'video_url', (v) => _uriFromJson(v as String?)),
            );
            return val;
          },
          fieldKeyMap: const {
            'startsAt': 'starts_at',
            'endsAt': 'ends_at',
            'isLightningTalk': 'is_lightning_talk',
            'videoUrl': 'video_url'
          },
        );

Map<String, dynamic> _$$SessionsWithSpeakerSponsorV4ViewImplToJson(
        _$SessionsWithSpeakerSponsorV4ViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'starts_at': instance.startsAt.toIso8601String(),
      'ends_at': instance.endsAt.toIso8601String(),
      'is_lightning_talk': instance.isLightningTalk,
      'speakers': instance.speakers,
      'sponsors': instance.sponsors,
      'video_url': _uriToJson(instance.videoUrl),
    };

_$SessionVenuesWithSessionsV4Impl _$$SessionVenuesWithSessionsV4ImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionVenuesWithSessionsV4Impl',
      json,
      ($checkedConvert) {
        final val = _$SessionVenuesWithSessionsV4Impl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          sessions: $checkedConvert(
              'sessions',
              (v) => (v as List<dynamic>)
                  .map((e) => SessionsWithSpeakerSponsorV4.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SessionVenuesWithSessionsV4ImplToJson(
        _$SessionVenuesWithSessionsV4Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sessions': instance.sessions,
    };

_$SessionsWithSpeakerSponsorV4Impl _$$SessionsWithSpeakerSponsorV4ImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionsWithSpeakerSponsorV4Impl',
      json,
      ($checkedConvert) {
        final val = _$SessionsWithSpeakerSponsorV4Impl(
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
          videoUrl:
              $checkedConvert('video_url', (v) => _uriFromJson(v as String?)),
        );
        return val;
      },
      fieldKeyMap: const {
        'startsAt': 'starts_at',
        'endsAt': 'ends_at',
        'isLightningTalk': 'is_lightning_talk',
        'videoUrl': 'video_url'
      },
    );

Map<String, dynamic> _$$SessionsWithSpeakerSponsorV4ImplToJson(
        _$SessionsWithSpeakerSponsorV4Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'starts_at': instance.startsAt.toIso8601String(),
      'ends_at': instance.endsAt.toIso8601String(),
      'is_lightning_talk': instance.isLightningTalk,
      'speakers': instance.speakers,
      'sponsors': instance.sponsors,
      'video_url': _uriToJson(instance.videoUrl),
    };
