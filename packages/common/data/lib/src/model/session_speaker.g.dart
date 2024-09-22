// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session_speaker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionSpeakerImpl _$$SessionSpeakerImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionSpeakerImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionSpeakerImpl(
          sessionId: $checkedConvert('session_id', (v) => v as String),
          speakerId: $checkedConvert('speaker_id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'sessionId': 'session_id', 'speakerId': 'speaker_id'},
    );

Map<String, dynamic> _$$SessionSpeakerImplToJson(
        _$SessionSpeakerImpl instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'speaker_id': instance.speakerId,
    };
