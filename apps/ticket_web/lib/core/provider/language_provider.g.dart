// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$supportedLocalesHash() => r'ed35f6a935e0495fdd73561cf864710095bb3213';

/// See also [supportedLocales].
@ProviderFor(supportedLocales)
final supportedLocalesProvider = Provider<List<AppLocale>>.internal(
  supportedLocales,
  name: r'supportedLocalesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supportedLocalesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SupportedLocalesRef = ProviderRef<List<AppLocale>>;
String _$languageProviderHash() => r'ebe179d4c7626fb14f8943c904f50f7ab63b5e8e';

/// See also [LanguageProvider].
@ProviderFor(LanguageProvider)
final languageProviderProvider =
    NotifierProvider<LanguageProvider, AppLocale>.internal(
  LanguageProvider.new,
  name: r'languageProviderProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$languageProviderHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LanguageProvider = Notifier<AppLocale>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
