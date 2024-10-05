// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'profile_with_sns.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileWithSnsImpl _$$ProfileWithSnsImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ProfileWithSnsImpl',
      json,
      ($checkedConvert) {
        final val = _$ProfileWithSnsImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          role: $checkedConvert('role', (v) => $enumDecode(_$RoleEnumMap, v)),
          comment: $checkedConvert('comment', (v) => v as String),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          googleAvatarUri: $checkedConvert('google_avatar_uri',
              (v) => v == null ? null : Uri.parse(v as String)),
          isAdult: $checkedConvert('is_adult', (v) => v as bool),
          snsAccounts: $checkedConvert(
              'sns_accounts',
              (v) => (v as List<dynamic>)
                  .map((e) => ProfileSocialNetworkingService.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          avatarName: $checkedConvert('avatar_name', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'createdAt': 'created_at',
        'googleAvatarUri': 'google_avatar_uri',
        'isAdult': 'is_adult',
        'snsAccounts': 'sns_accounts',
        'avatarName': 'avatar_name'
      },
    );

Map<String, dynamic> _$$ProfileWithSnsImplToJson(
        _$ProfileWithSnsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': _$RoleEnumMap[instance.role]!,
      'comment': instance.comment,
      'created_at': instance.createdAt.toIso8601String(),
      'google_avatar_uri': instance.googleAvatarUri?.toString(),
      'is_adult': instance.isAdult,
      'sns_accounts': instance.snsAccounts,
      'avatar_name': instance.avatarName,
    };

const _$RoleEnumMap = {
  Role.admin: 'admin',
  Role.user: 'user',
  Role.sponsor: 'sponsor',
  Role.speaker: 'speaker',
};

_$ProfileWithSnsViewImpl _$$ProfileWithSnsViewImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ProfileWithSnsViewImpl',
      json,
      ($checkedConvert) {
        final val = _$ProfileWithSnsViewImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          role: $checkedConvert('role', (v) => $enumDecode(_$RoleEnumMap, v)),
          comment: $checkedConvert('comment', (v) => v as String),
          avatarName: $checkedConvert('avatar_name', (v) => v as String?),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          avatarUrl: $checkedConvert(
              'avatar_url', (v) => v == null ? null : Uri.parse(v as String)),
          isAdult: $checkedConvert('is_adult', (v) => v as bool),
          snsAccounts: $checkedConvert(
              'sns_accounts',
              (v) => (v as List<dynamic>)
                  .map((e) => ProfileSocialNetworkingService.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'avatarName': 'avatar_name',
        'createdAt': 'created_at',
        'avatarUrl': 'avatar_url',
        'isAdult': 'is_adult',
        'snsAccounts': 'sns_accounts'
      },
    );

Map<String, dynamic> _$$ProfileWithSnsViewImplToJson(
        _$ProfileWithSnsViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'role': _$RoleEnumMap[instance.role]!,
      'comment': instance.comment,
      'avatar_name': instance.avatarName,
      'created_at': instance.createdAt.toIso8601String(),
      'avatar_url': instance.avatarUrl?.toString(),
      'is_adult': instance.isAdult,
      'sns_accounts': instance.snsAccounts,
    };
