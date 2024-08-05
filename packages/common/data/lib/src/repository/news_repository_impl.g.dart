// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'news_repository_impl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsTableImpl _$$NewsTableImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$NewsTableImpl',
      json,
      ($checkedConvert) {
        final val = _$NewsTableImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          text: $checkedConvert('text', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          startedAt:
              $checkedConvert('started_at', (v) => DateTime.parse(v as String)),
          endedAt:
              $checkedConvert('ended_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'startedAt': 'started_at', 'endedAt': 'ended_at'},
    );

Map<String, dynamic> _$$NewsTableImplToJson(_$NewsTableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'url': instance.url,
      'started_at': instance.startedAt.toIso8601String(),
      'ended_at': instance.endedAt.toIso8601String(),
    };
