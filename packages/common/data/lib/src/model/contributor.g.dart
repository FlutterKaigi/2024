// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'contributor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContributorImpl _$$ContributorImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ContributorImpl',
      json,
      ($checkedConvert) {
        final val = _$ContributorImpl(
          name: $checkedConvert('name', (v) => v as String),
          avatarUrl:
              $checkedConvert('avatar_url', (v) => Uri.parse(v as String)),
          contributionCount:
              $checkedConvert('contribution_count', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'avatarUrl': 'avatar_url',
        'contributionCount': 'contribution_count'
      },
    );

Map<String, dynamic> _$$ContributorImplToJson(_$ContributorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'avatar_url': instance.avatarUrl.toString(),
      'contribution_count': instance.contributionCount,
    };
