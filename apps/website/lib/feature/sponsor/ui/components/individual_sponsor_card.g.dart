// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'individual_sponsor_card.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userAvatarImageHash() => r'b34505520d5434c9dd0c8d779d44de7eb0f44a21';

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

/// See also [userAvatarImage].
@ProviderFor(userAvatarImage)
const userAvatarImageProvider = UserAvatarImageFamily();

/// See also [userAvatarImage].
class UserAvatarImageFamily extends Family<AsyncValue<Uint8List?>> {
  /// See also [userAvatarImage].
  const UserAvatarImageFamily();

  /// See also [userAvatarImage].
  UserAvatarImageProvider call(
    ProfileWithSns sponsor,
  ) {
    return UserAvatarImageProvider(
      sponsor,
    );
  }

  @override
  UserAvatarImageProvider getProviderOverride(
    covariant UserAvatarImageProvider provider,
  ) {
    return call(
      provider.sponsor,
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
  String? get name => r'userAvatarImageProvider';
}

/// See also [userAvatarImage].
class UserAvatarImageProvider extends FutureProvider<Uint8List?> {
  /// See also [userAvatarImage].
  UserAvatarImageProvider(
    ProfileWithSns sponsor,
  ) : this._internal(
          (ref) => userAvatarImage(
            ref as UserAvatarImageRef,
            sponsor,
          ),
          from: userAvatarImageProvider,
          name: r'userAvatarImageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userAvatarImageHash,
          dependencies: UserAvatarImageFamily._dependencies,
          allTransitiveDependencies:
              UserAvatarImageFamily._allTransitiveDependencies,
          sponsor: sponsor,
        );

  UserAvatarImageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sponsor,
  }) : super.internal();

  final ProfileWithSns sponsor;

  @override
  Override overrideWith(
    FutureOr<Uint8List?> Function(UserAvatarImageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserAvatarImageProvider._internal(
        (ref) => create(ref as UserAvatarImageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sponsor: sponsor,
      ),
    );
  }

  @override
  FutureProviderElement<Uint8List?> createElement() {
    return _UserAvatarImageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserAvatarImageProvider && other.sponsor == sponsor;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sponsor.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UserAvatarImageRef on FutureProviderRef<Uint8List?> {
  /// The parameter `sponsor` of this provider.
  ProfileWithSns get sponsor;
}

class _UserAvatarImageProviderElement extends FutureProviderElement<Uint8List?>
    with UserAvatarImageRef {
  _UserAvatarImageProviderElement(super.provider);

  @override
  ProfileWithSns get sponsor => (origin as UserAvatarImageProvider).sponsor;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
