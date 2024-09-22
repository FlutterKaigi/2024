// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'profile_social_networking_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileSocialNetworkingServiceImpl
    _$$ProfileSocialNetworkingServiceImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$ProfileSocialNetworkingServiceImpl',
          json,
          ($checkedConvert) {
            final val = _$ProfileSocialNetworkingServiceImpl(
              id: $checkedConvert('id', (v) => v as String),
              type: $checkedConvert(
                  'type', (v) => $enumDecode(_$SnsTypeEnumMap, v)),
              value: $checkedConvert('value', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$$ProfileSocialNetworkingServiceImplToJson(
        _$ProfileSocialNetworkingServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SnsTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$SnsTypeEnumMap = {
  SnsType.github: 'github',
  SnsType.x: 'x',
  SnsType.discord: 'discord',
  SnsType.medium: 'medium',
  SnsType.qiita: 'qiita',
  SnsType.zenn: 'zenn',
  SnsType.note: 'note',
  SnsType.other: 'other',
};
