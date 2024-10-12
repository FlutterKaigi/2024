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
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          isAdult: $checkedConvert('is_adult', (v) => v as bool?),
          isPublished: $checkedConvert('is_published', (v) => v as bool?),
          googleAvatarUri: $checkedConvert('google_avatar_uri',
              (v) => v == null ? null : Uri.parse(v as String)),
          avatarName: $checkedConvert('avatar_name', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'isAdult': 'is_adult',
        'isPublished': 'is_published',
        'googleAvatarUri': 'google_avatar_uri',
        'avatarName': 'avatar_name'
      },
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': _$RoleEnumMap[instance.role]!,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'is_adult': instance.isAdult,
      'is_published': instance.isPublished,
      'google_avatar_uri': instance.googleAvatarUri?.toString(),
      'avatar_name': instance.avatarName,
    };

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.user: 'user',
  Role.sponsor: 'sponsor',
  Role.speaker: 'speaker',
};

_$ProfileTableImpl _$$ProfileTableImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ProfileTableImpl',
      json,
      ($checkedConvert) {
        final val = _$ProfileTableImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          role: $checkedConvert('role', (v) => $enumDecode(_$RoleEnumMap, v)),
          comment: $checkedConvert('comment', (v) => v as String),
          avatarName: $checkedConvert('avatar_name', (v) => v as String?),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          avatarUrl: $checkedConvert(
              'avatar_url', (v) => v == null ? null : Uri.parse(v as String)),
          isAdult: $checkedConvert('is_adult', (v) => v as bool?),
          isPublished: $checkedConvert('is_published', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'avatarName': 'avatar_name',
        'createdAt': 'created_at',
        'avatarUrl': 'avatar_url',
        'isAdult': 'is_adult',
        'isPublished': 'is_published'
      },
    );

Map<String, dynamic> _$$ProfileTableImplToJson(_$ProfileTableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': _$RoleEnumMap[instance.role]!,
      'comment': instance.comment,
      'avatar_name': instance.avatarName,
      'created_at': instance.createdAt.toIso8601String(),
      'avatar_url': instance.avatarUrl?.toString(),
      'is_adult': instance.isAdult,
      'is_published': instance.isPublished,
    };
