// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'entry_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryLogImpl _$$EntryLogImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EntryLogImpl',
      json,
      ($checkedConvert) {
        final val = _$EntryLogImpl(
          id: $checkedConvert('id', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'createdAt': 'created_at'},
    );

Map<String, dynamic> _$$EntryLogImplToJson(_$EntryLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
    };
