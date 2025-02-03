// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sponsor_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SponsorTableImpl _$$SponsorTableImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorTableImpl',
      json,
      ($checkedConvert) {
        final val = _$SponsorTableImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          logoName: $checkedConvert('logo_name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SponsorTypeEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'logoName': 'logo_name'},
    );

Map<String, dynamic> _$$SponsorTableImplToJson(_$SponsorTableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_name': instance.logoName,
      'description': instance.description,
      'url': instance.url,
      'type': _$SponsorTypeEnumMap[instance.type]!,
    };

const _$SponsorTypeEnumMap = {
  SponsorType.platinum: 'platinum',
  SponsorType.gold: 'gold',
  SponsorType.silver: 'silver',
  SponsorType.bronze: 'bronze',
};

_$SponsorV2TableImpl _$$SponsorV2TableImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SponsorV2TableImpl',
      json,
      ($checkedConvert) {
        final val = _$SponsorV2TableImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          logoName: $checkedConvert('logo_name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String?),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$SponsorTypeV2EnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'logoName': 'logo_name'},
    );

Map<String, dynamic> _$$SponsorV2TableImplToJson(
        _$SponsorV2TableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_name': instance.logoName,
      'description': instance.description,
      'url': instance.url,
      'type': _$SponsorTypeV2EnumMap[instance.type]!,
    };

const _$SponsorTypeV2EnumMap = {
  SponsorTypeV2.platinum: 'platinum',
  SponsorTypeV2.gold: 'gold',
  SponsorTypeV2.silver: 'silver',
  SponsorTypeV2.bronze: 'bronze',
  SponsorTypeV2.community: 'community',
  SponsorTypeV2.translation: 'translation',
};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sponsorRepositoryHash() => r'2e2845e4f66ad8b5414daac6bee4ab178267e05d';

/// See also [sponsorRepository].
@ProviderFor(sponsorRepository)
final sponsorRepositoryProvider = Provider<SponsorRepository>.internal(
  sponsorRepository,
  name: r'sponsorRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sponsorRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SponsorRepositoryRef = ProviderRef<SponsorRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
