// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'profile_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileNotifierHash() => r'84e5c9bb4e202776d0878dde0e44a76fb9c2a8e7';

/// See also [ProfileNotifier].
@ProviderFor(ProfileNotifier)
final profileNotifierProvider =
    AsyncNotifierProvider<ProfileNotifier, ProfileWithSns?>.internal(
  ProfileNotifier.new,
  name: r'profileNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$profileNotifierHash,
  dependencies: <ProviderOrFamily>[authNotifierProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    authNotifierProvider,
    ...?authNotifierProvider.allTransitiveDependencies
  },
);

typedef _$ProfileNotifier = AsyncNotifier<ProfileWithSns?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
