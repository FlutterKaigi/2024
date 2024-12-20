// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'special_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecialSessionImpl _$$SpecialSessionImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SpecialSessionImpl',
      json,
      ($checkedConvert) {
        final val = _$SpecialSessionImpl(
          title: $checkedConvert('title', (v) => v as String),
          startsAt:
              $checkedConvert('starts_at', (v) => DateTime.parse(v as String)),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SpecialSessionTypeEnumMap, v)),
          endsAt: $checkedConvert(
              'ends_at', (v) => v == null ? null : DateTime.parse(v as String)),
          speaker: $checkedConvert(
              'speaker',
              (v) => v == null
                  ? null
                  : Speaker.fromJson(v as Map<String, dynamic>)),
          imagePath: $checkedConvert('image_path', (v) => v as String?),
          speakerTitle: $checkedConvert('speaker_title', (v) => v as String?),
          venueId: $checkedConvert('venue_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'startsAt': 'starts_at',
        'endsAt': 'ends_at',
        'imagePath': 'image_path',
        'speakerTitle': 'speaker_title',
        'venueId': 'venue_id'
      },
    );

Map<String, dynamic> _$$SpecialSessionImplToJson(
        _$SpecialSessionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'starts_at': instance.startsAt.toIso8601String(),
      'type': _$SpecialSessionTypeEnumMap[instance.type]!,
      'ends_at': instance.endsAt?.toIso8601String(),
      'speaker': instance.speaker,
      'image_path': instance.imagePath,
      'speaker_title': instance.speakerTitle,
      'venue_id': instance.venueId,
    };

const _$SpecialSessionTypeEnumMap = {
  SpecialSessionType.opening: 'opening',
  SpecialSessionType.keynote: 'keynote',
  SpecialSessionType.lunch: 'lunch',
  SpecialSessionType.preparation: 'preparation',
  SpecialSessionType.closing: 'closing',
  SpecialSessionType.party: 'party',
};
