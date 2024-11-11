// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_minimum_version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppMinimumVersionImpl _$$AppMinimumVersionImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AppMinimumVersionImpl',
      json,
      ($checkedConvert) {
        final val = _$AppMinimumVersionImpl(
          platform: $checkedConvert(
              'platform', (v) => $enumDecode(_$AppPlatformEnumMap, v)),
          version: $checkedConvert('app_version_text',
              (v) => const VersionConverter().fromJson(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'version': 'app_version_text'},
    );

Map<String, dynamic> _$$AppMinimumVersionImplToJson(
        _$AppMinimumVersionImpl instance) =>
    <String, dynamic>{
      'platform': _$AppPlatformEnumMap[instance.platform]!,
      'app_version_text': const VersionConverter().toJson(instance.version),
    };

const _$AppPlatformEnumMap = {
  AppPlatform.ios: 'ios',
  AppPlatform.android: 'android',
};
