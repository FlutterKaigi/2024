// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_minimum_version_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getAppMinimumVersionHash() =>
    r'23533cfa7dfcc06d3ab564310967c079ce54f436';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getAppMinimumVersion].
@ProviderFor(getAppMinimumVersion)
const getAppMinimumVersionProvider = GetAppMinimumVersionFamily();

/// See also [getAppMinimumVersion].
class GetAppMinimumVersionFamily extends Family<AsyncValue<AppMinimumVersion>> {
  /// See also [getAppMinimumVersion].
  const GetAppMinimumVersionFamily();

  /// See also [getAppMinimumVersion].
  GetAppMinimumVersionProvider call({
    required AppPlatform platform,
  }) {
    return GetAppMinimumVersionProvider(
      platform: platform,
    );
  }

  @override
  GetAppMinimumVersionProvider getProviderOverride(
    covariant GetAppMinimumVersionProvider provider,
  ) {
    return call(
      platform: provider.platform,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAppMinimumVersionProvider';
}

/// See also [getAppMinimumVersion].
class GetAppMinimumVersionProvider
    extends AutoDisposeFutureProvider<AppMinimumVersion> {
  /// See also [getAppMinimumVersion].
  GetAppMinimumVersionProvider({
    required AppPlatform platform,
  }) : this._internal(
          (ref) => getAppMinimumVersion(
            ref as GetAppMinimumVersionRef,
            platform: platform,
          ),
          from: getAppMinimumVersionProvider,
          name: r'getAppMinimumVersionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAppMinimumVersionHash,
          dependencies: GetAppMinimumVersionFamily._dependencies,
          allTransitiveDependencies:
              GetAppMinimumVersionFamily._allTransitiveDependencies,
          platform: platform,
        );

  GetAppMinimumVersionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.platform,
  }) : super.internal();

  final AppPlatform platform;

  @override
  Override overrideWith(
    FutureOr<AppMinimumVersion> Function(GetAppMinimumVersionRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAppMinimumVersionProvider._internal(
        (ref) => create(ref as GetAppMinimumVersionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        platform: platform,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AppMinimumVersion> createElement() {
    return _GetAppMinimumVersionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAppMinimumVersionProvider && other.platform == platform;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, platform.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAppMinimumVersionRef
    on AutoDisposeFutureProviderRef<AppMinimumVersion> {
  /// The parameter `platform` of this provider.
  AppPlatform get platform;
}

class _GetAppMinimumVersionProviderElement
    extends AutoDisposeFutureProviderElement<AppMinimumVersion>
    with GetAppMinimumVersionRef {
  _GetAppMinimumVersionProviderElement(super.provider);

  @override
  AppPlatform get platform => (origin as GetAppMinimumVersionProvider).platform;
}

String _$subscribeAppMinimumVersionHash() =>
    r'fc92e3064e70490185b8ee889bbaab78802dfe5c';

/// See also [subscribeAppMinimumVersion].
@ProviderFor(subscribeAppMinimumVersion)
const subscribeAppMinimumVersionProvider = SubscribeAppMinimumVersionFamily();

/// See also [subscribeAppMinimumVersion].
class SubscribeAppMinimumVersionFamily extends Family<AsyncValue<void>> {
  /// See also [subscribeAppMinimumVersion].
  const SubscribeAppMinimumVersionFamily();

  /// See also [subscribeAppMinimumVersion].
  SubscribeAppMinimumVersionProvider call({
    required AppPlatform platform,
    required void Function(AppMinimumVersion) callback,
  }) {
    return SubscribeAppMinimumVersionProvider(
      platform: platform,
      callback: callback,
    );
  }

  @override
  SubscribeAppMinimumVersionProvider getProviderOverride(
    covariant SubscribeAppMinimumVersionProvider provider,
  ) {
    return call(
      platform: provider.platform,
      callback: provider.callback,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'subscribeAppMinimumVersionProvider';
}

/// See also [subscribeAppMinimumVersion].
class SubscribeAppMinimumVersionProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [subscribeAppMinimumVersion].
  SubscribeAppMinimumVersionProvider({
    required AppPlatform platform,
    required void Function(AppMinimumVersion) callback,
  }) : this._internal(
          (ref) => subscribeAppMinimumVersion(
            ref as SubscribeAppMinimumVersionRef,
            platform: platform,
            callback: callback,
          ),
          from: subscribeAppMinimumVersionProvider,
          name: r'subscribeAppMinimumVersionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$subscribeAppMinimumVersionHash,
          dependencies: SubscribeAppMinimumVersionFamily._dependencies,
          allTransitiveDependencies:
              SubscribeAppMinimumVersionFamily._allTransitiveDependencies,
          platform: platform,
          callback: callback,
        );

  SubscribeAppMinimumVersionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.platform,
    required this.callback,
  }) : super.internal();

  final AppPlatform platform;
  final void Function(AppMinimumVersion) callback;

  @override
  Override overrideWith(
    FutureOr<void> Function(SubscribeAppMinimumVersionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SubscribeAppMinimumVersionProvider._internal(
        (ref) => create(ref as SubscribeAppMinimumVersionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        platform: platform,
        callback: callback,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SubscribeAppMinimumVersionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SubscribeAppMinimumVersionProvider &&
        other.platform == platform &&
        other.callback == callback;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, platform.hashCode);
    hash = _SystemHash.combine(hash, callback.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SubscribeAppMinimumVersionRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `platform` of this provider.
  AppPlatform get platform;

  /// The parameter `callback` of this provider.
  void Function(AppMinimumVersion) get callback;
}

class _SubscribeAppMinimumVersionProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with SubscribeAppMinimumVersionRef {
  _SubscribeAppMinimumVersionProviderElement(super.provider);

  @override
  AppPlatform get platform =>
      (origin as SubscribeAppMinimumVersionProvider).platform;
  @override
  void Function(AppMinimumVersion) get callback =>
      (origin as SubscribeAppMinimumVersionProvider).callback;
}

String _$unsubscribeAppMinimumVersionHash() =>
    r'5ce9da2b6f789bf04fb1ab5d63227d959b5d25ec';

/// See also [unsubscribeAppMinimumVersion].
@ProviderFor(unsubscribeAppMinimumVersion)
final unsubscribeAppMinimumVersionProvider =
    AutoDisposeFutureProvider<void>.internal(
  unsubscribeAppMinimumVersion,
  name: r'unsubscribeAppMinimumVersionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$unsubscribeAppMinimumVersionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UnsubscribeAppMinimumVersionRef = AutoDisposeFutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
