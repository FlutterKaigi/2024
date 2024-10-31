// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sponsor_with_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SponsorWithSessionViewImpl _$$SponsorWithSessionViewImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorWithSessionViewImpl',
      json,
      ($checkedConvert) {
        final val = _$SponsorWithSessionViewImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          logoName: $checkedConvert('logo_name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          url: $checkedConvert(
              'url', (v) => v == null ? null : Uri.parse(v as String)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SponsorTypeEnumMap, v)),
          sessions: $checkedConvert(
              'sessions',
              (v) => (v as List<dynamic>)
                  .map((e) => SessionWithSpeakerAndVenue.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'logoName': 'logo_name'},
    );

Map<String, dynamic> _$$SponsorWithSessionViewImplToJson(
        _$SponsorWithSessionViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_name': instance.logoName,
      'description': instance.description,
      'url': instance.url?.toString(),
      'type': _$SponsorTypeEnumMap[instance.type]!,
      'sessions': instance.sessions,
    };

const _$SponsorTypeEnumMap = {
  SponsorType.platinum: 'platinum',
  SponsorType.gold: 'gold',
  SponsorType.silver: 'silver',
  SponsorType.bronze: 'bronze',
};

_$SponsorWithSessionImpl _$$SponsorWithSessionImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorWithSessionImpl',
      json,
      ($checkedConvert) {
        final val = _$SponsorWithSessionImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          logoUrl: $checkedConvert(
              'logo_url', (v) => v == null ? null : Uri.parse(v as String)),
          description: $checkedConvert('description', (v) => v as String),
          url: $checkedConvert(
              'url', (v) => v == null ? null : Uri.parse(v as String)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SponsorTypeEnumMap, v)),
          sessions: $checkedConvert(
              'sessions',
              (v) => (v as List<dynamic>)
                  .map((e) => SessionWithSpeakerAndVenue.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'logoUrl': 'logo_url'},
    );

Map<String, dynamic> _$$SponsorWithSessionImplToJson(
        _$SponsorWithSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_url': instance.logoUrl?.toString(),
      'description': instance.description,
      'url': instance.url?.toString(),
      'type': _$SponsorTypeEnumMap[instance.type]!,
      'sessions': instance.sessions,
    };

_$SessionWithSpeakerAndVenueImpl _$$SessionWithSpeakerAndVenueImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionWithSpeakerAndVenueImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionWithSpeakerAndVenueImpl(
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
          venue: $checkedConvert(
              'venue', (v) => SessionVenue.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'startsAt': 'starts_at',
        'endsAt': 'ends_at',
        'isLightningTalk': 'is_lightning_talk'
      },
    );

Map<String, dynamic> _$$SessionWithSpeakerAndVenueImplToJson(
        _$SessionWithSpeakerAndVenueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'starts_at': instance.startsAt.toIso8601String(),
      'ends_at': instance.endsAt.toIso8601String(),
      'is_lightning_talk': instance.isLightningTalk,
      'speakers': instance.speakers,
      'venue': instance.venue,
    };

_$SponsorWithSessionV2ViewImpl _$$SponsorWithSessionV2ViewImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorWithSessionV2ViewImpl',
      json,
      ($checkedConvert) {
        final val = _$SponsorWithSessionV2ViewImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          logoName: $checkedConvert('logo_name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          url: $checkedConvert(
              'url', (v) => v == null ? null : Uri.parse(v as String)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SponsorTypeEnumMap, v)),
          sessions: $checkedConvert(
              'sessions',
              (v) => (v as List<dynamic>)
                  .map((e) => SponsorWithSessionV2ViewSession.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'logoName': 'logo_name'},
    );

Map<String, dynamic> _$$SponsorWithSessionV2ViewImplToJson(
        _$SponsorWithSessionV2ViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_name': instance.logoName,
      'description': instance.description,
      'url': instance.url?.toString(),
      'type': _$SponsorTypeEnumMap[instance.type]!,
      'sessions': instance.sessions,
    };

_$SponsorWithSessionV2ViewSessionImpl
    _$$SponsorWithSessionV2ViewSessionImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$SponsorWithSessionV2ViewSessionImpl',
          json,
          ($checkedConvert) {
            final val = _$SponsorWithSessionV2ViewSessionImpl(
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
              venue: $checkedConvert('venue',
                  (v) => SessionVenue.fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {
            'startsAt': 'starts_at',
            'endsAt': 'ends_at',
            'isLightningTalk': 'is_lightning_talk'
          },
        );

Map<String, dynamic> _$$SponsorWithSessionV2ViewSessionImplToJson(
        _$SponsorWithSessionV2ViewSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'starts_at': instance.startsAt.toIso8601String(),
      'ends_at': instance.endsAt.toIso8601String(),
      'is_lightning_talk': instance.isLightningTalk,
      'speakers': instance.speakers,
      'venue': instance.venue,
    };

_$SponsorWithSessionV2Impl _$$SponsorWithSessionV2ImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorWithSessionV2Impl',
      json,
      ($checkedConvert) {
        final val = _$SponsorWithSessionV2Impl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          logoUrl: $checkedConvert(
              'logo_url', (v) => v == null ? null : Uri.parse(v as String)),
          description: $checkedConvert('description', (v) => v as String),
          url: $checkedConvert(
              'url', (v) => v == null ? null : Uri.parse(v as String)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SponsorTypeEnumMap, v)),
          sessions: $checkedConvert(
              'sessions',
              (v) => (v as List<dynamic>)
                  .map((e) => SponsorWithSessionV2Session.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'logoUrl': 'logo_url'},
    );

Map<String, dynamic> _$$SponsorWithSessionV2ImplToJson(
        _$SponsorWithSessionV2Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_url': instance.logoUrl?.toString(),
      'description': instance.description,
      'url': instance.url?.toString(),
      'type': _$SponsorTypeEnumMap[instance.type]!,
      'sessions': instance.sessions,
    };

_$SponsorWithSessionV2SessionImpl _$$SponsorWithSessionV2SessionImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorWithSessionV2SessionImpl',
      json,
      ($checkedConvert) {
        final val = _$SponsorWithSessionV2SessionImpl(
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
          venue: $checkedConvert(
              'venue', (v) => SessionVenue.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'startsAt': 'starts_at',
        'endsAt': 'ends_at',
        'isLightningTalk': 'is_lightning_talk'
      },
    );

Map<String, dynamic> _$$SponsorWithSessionV2SessionImplToJson(
        _$SponsorWithSessionV2SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'starts_at': instance.startsAt.toIso8601String(),
      'ends_at': instance.endsAt.toIso8601String(),
      'is_lightning_talk': instance.isLightningTalk,
      'speakers': instance.speakers,
      'venue': instance.venue,
    };
