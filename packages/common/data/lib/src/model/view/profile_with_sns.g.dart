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
          avatarUrl: $checkedConvert('avatar_url', (v) => v as String),
          avatarName: $checkedConvert('avatar_name', (v) => v as String),
          snsAccounts: $checkedConvert(
              'sns_accounts',
              (v) => (v as List<dynamic>)
                  .map((e) => SnsAccount.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {
        'avatarUrl': 'avatar_url',
        'avatarName': 'avatar_name',
        'snsAccounts': 'sns_accounts'
      },
    );

Map<String, dynamic> _$$ProfileWithSnsImplToJson(
        _$ProfileWithSnsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
      'avatar_name': instance.avatarName,
      'sns_accounts': instance.snsAccounts,
    };
