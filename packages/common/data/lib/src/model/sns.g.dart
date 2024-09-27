// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sns.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnsAccountImpl _$$SnsAccountImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SnsAccountImpl',
      json,
      ($checkedConvert) {
        final val = _$SnsAccountImpl(
          type:
              $checkedConvert('type', (v) => $enumDecode(_$SnsTypeEnumMap, v)),
          link: $checkedConvert('link', (v) => Uri.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SnsAccountImplToJson(_$SnsAccountImpl instance) =>
    <String, dynamic>{
      'type': _$SnsTypeEnumMap[instance.type]!,
      'link': instance.link.toString(),
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
