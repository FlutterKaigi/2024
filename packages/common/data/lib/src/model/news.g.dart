// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$NewsImpl',
      json,
      ($checkedConvert) {
        final val = _$NewsImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          text: $checkedConvert('text', (v) => v as String),
          url: $checkedConvert('url', (v) => Uri.parse(v as String)),
          startedAt: $checkedConvert('started_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
          endedAt: $checkedConvert('ended_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'startedAt': 'started_at', 'endedAt': 'ended_at'},
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'url': instance.url.toString(),
      'started_at': instance.startedAt?.toIso8601String(),
      'ended_at': instance.endedAt?.toIso8601String(),
    };
