// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'speaker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpeakerImpl _$$SpeakerImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SpeakerImpl',
      json,
      ($checkedConvert) {
        final val = _$SpeakerImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          avatarUri: $checkedConvert(
              'avatar_uri', (v) => v == null ? null : Uri.parse(v as String)),
          xUri: $checkedConvert(
              'x_uri', (v) => v == null ? null : Uri.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'avatarUri': 'avatar_uri', 'xUri': 'x_uri'},
    );

Map<String, dynamic> _$$SpeakerImplToJson(_$SpeakerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar_uri': instance.avatarUri?.toString(),
      'x_uri': instance.xUri?.toString(),
    };

_$SpeakerTableImpl _$$SpeakerTableImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SpeakerTableImpl',
      json,
      ($checkedConvert) {
        final val = _$SpeakerTableImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          avatarName: $checkedConvert('avatar_name', (v) => v as String),
          xId: $checkedConvert('x_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'avatarName': 'avatar_name', 'xId': 'x_id'},
    );

Map<String, dynamic> _$$SpeakerTableImplToJson(_$SpeakerTableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar_name': instance.avatarName,
      'x_id': instance.xId,
    };
