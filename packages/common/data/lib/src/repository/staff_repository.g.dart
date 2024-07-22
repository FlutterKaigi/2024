// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffsViewImpl _$$StaffsViewImplFromJson(Map<String, dynamic> json) =>
    _$StaffsViewImpl(
      name: json['name'] as String,
      iconName: json['icon_name'] as String,
      greeting: json['greeting'] as String,
      snsAccounts: (json['sns_accounts'] as List<dynamic>)
          .map((e) => StaffsViewSnsAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StaffsViewImplToJson(_$StaffsViewImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon_name': instance.iconName,
      'greeting': instance.greeting,
      'sns_accounts': instance.snsAccounts,
    };

_$StaffsViewSnsAccountImpl _$$StaffsViewSnsAccountImplFromJson(
        Map<String, dynamic> json) =>
    _$StaffsViewSnsAccountImpl(
      type: json['type'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$StaffsViewSnsAccountImplToJson(
        _$StaffsViewSnsAccountImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$staffRepositoryHash() => r'e31e086692ee21df554667d1a0536b0e342dfc64';

/// See also [staffRepository].
@ProviderFor(staffRepository)
final staffRepositoryProvider = Provider<StaffRepository>.internal(
  staffRepository,
  name: r'staffRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$staffRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StaffRepositoryRef = ProviderRef<StaffRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
