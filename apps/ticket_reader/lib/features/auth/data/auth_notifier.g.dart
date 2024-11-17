// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'auth_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supabaseAccessTokenHash() =>
    r'3ef951631c94a0967882182f9aeac5963f4be5b0';

/// See also [supabaseAccessToken].
@ProviderFor(supabaseAccessToken)
final supabaseAccessTokenProvider = Provider<String?>.internal(
  supabaseAccessToken,
  name: r'supabaseAccessTokenProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseAccessTokenHash,
  dependencies: <ProviderOrFamily>[authNotifierProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    authNotifierProvider,
    ...?authNotifierProvider.allTransitiveDependencies
  },
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SupabaseAccessTokenRef = ProviderRef<String?>;
String _$authNotifierHash() => r'183d87bc5eb364e6ac80b367fe31ab9c6e8e248e';

/// See also [AuthNotifier].
@ProviderFor(AuthNotifier)
final authNotifierProvider = NotifierProvider<AuthNotifier, User?>.internal(
  AuthNotifier.new,
  name: r'authNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$authNotifierHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef _$AuthNotifier = Notifier<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
