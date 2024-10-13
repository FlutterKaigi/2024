// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session_venues_with_sessions_view.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionVenuesWithSessionsViewImpl
    _$$SessionVenuesWithSessionsViewImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$SessionVenuesWithSessionsViewImpl',
          json,
          ($checkedConvert) {
            final val = _$SessionVenuesWithSessionsViewImpl(
              id: $checkedConvert('id', (v) => v as String),
              name: $checkedConvert('name', (v) => v as String),
              sessions: $checkedConvert(
                  'sessions',
                  (v) => (v as List<dynamic>)
                      .map((e) => SessionWithSpeakerAndSponsorView.fromJson(
                          e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$$SessionVenuesWithSessionsViewImplToJson(
        _$SessionVenuesWithSessionsViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sessions': instance.sessions,
    };

_$SessionWithSpeakerAndSponsorViewImpl
    _$$SessionWithSpeakerAndSponsorViewImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$SessionWithSpeakerAndSponsorViewImpl',
          json,
          ($checkedConvert) {
            final val = _$SessionWithSpeakerAndSponsorViewImpl(
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
                      .map((e) => ProfileWithSnsView.fromJson(
                          e as Map<String, dynamic>))
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

Map<String, dynamic> _$$SessionWithSpeakerAndSponsorViewImplToJson(
        _$SessionWithSpeakerAndSponsorViewImpl instance) =>
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

_$SessionVenuesWithSessionsImpl _$$SessionVenuesWithSessionsImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionVenuesWithSessionsImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionVenuesWithSessionsImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          sessions: $checkedConvert(
              'sessions',
              (v) => (v as List<dynamic>)
                  .map((e) => SessionWithSpeakerAndSponsor.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SessionVenuesWithSessionsImplToJson(
        _$SessionVenuesWithSessionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sessions': instance.sessions,
    };

_$SessionWithSpeakerAndSponsorImpl _$$SessionWithSpeakerAndSponsorImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionWithSpeakerAndSponsorImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionWithSpeakerAndSponsorImpl(
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
                  .map((e) =>
                      ProfileWithSnsView.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$SessionWithSpeakerAndSponsorImplToJson(
        _$SessionWithSpeakerAndSponsorImpl instance) =>
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
