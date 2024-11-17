// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'user_avatar_image_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userAvatarImageHash() => r'17fdf21aaae2059664c77f4b9fd18102dd3d06a7';

/// See also [userAvatarImage].
@ProviderFor(userAvatarImage)
final userAvatarImageProvider = FutureProvider<Uint8List?>.internal(
  userAvatarImage,
  name: r'userAvatarImageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userAvatarImageHash,
  dependencies: <ProviderOrFamily>[profileNotifierProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    profileNotifierProvider,
    ...?profileNotifierProvider.allTransitiveDependencies
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserAvatarImageRef = FutureProviderRef<Uint8List?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
