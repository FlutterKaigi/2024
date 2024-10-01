// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ProfileImpl',
      json,
      ($checkedConvert) {
        final val = _$ProfileImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          role: $checkedConvert('role', (v) => $enumDecode(_$RoleEnumMap, v)),
          comment: $checkedConvert('comment', (v) => v as String),
          avatarName: $checkedConvert('avatar_name', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String),
          isAdult: $checkedConvert('is_adult', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'avatarName': 'avatar_name',
        'createdAt': 'created_at',
        'avatarUrl': 'avatar_url',
        'isAdult': 'is_adult'
      },
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': _$RoleEnumMap[instance.role]!,
      'comment': instance.comment,
      'avatar_name': instance.avatarName,
      'created_at': instance.createdAt.toIso8601String(),
      'avatar_url': instance.avatarUrl,
      'is_adult': instance.isAdult,
    };

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.user: 'user',
  Role.sponsor: 'sponsor',
  Role.speaker: 'speaker',
};
