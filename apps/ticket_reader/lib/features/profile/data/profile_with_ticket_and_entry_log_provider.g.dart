// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'profile_with_ticket_and_entry_log_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileWithTicketAndEntryLogUserIdHash() =>
    r'5ebdea45749dd8d4e210d62c91c78ebbefd326fb';

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

/// See also [profileWithTicketAndEntryLogUserId].
@ProviderFor(profileWithTicketAndEntryLogUserId)
const profileWithTicketAndEntryLogUserIdProvider =
    ProfileWithTicketAndEntryLogUserIdFamily();

/// See also [profileWithTicketAndEntryLogUserId].
class ProfileWithTicketAndEntryLogUserIdFamily
    extends Family<AsyncValue<ProfileWithTicketAndEntryLog?>> {
  /// See also [profileWithTicketAndEntryLogUserId].
  const ProfileWithTicketAndEntryLogUserIdFamily();

  /// See also [profileWithTicketAndEntryLogUserId].
  ProfileWithTicketAndEntryLogUserIdProvider call(
    String userId,
  ) {
    return ProfileWithTicketAndEntryLogUserIdProvider(
      userId,
    );
  }

  @override
  ProfileWithTicketAndEntryLogUserIdProvider getProviderOverride(
    covariant ProfileWithTicketAndEntryLogUserIdProvider provider,
  ) {
    return call(
      provider.userId,
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
  String? get name => r'profileWithTicketAndEntryLogUserIdProvider';
}

/// See also [profileWithTicketAndEntryLogUserId].
class ProfileWithTicketAndEntryLogUserIdProvider
    extends AutoDisposeFutureProvider<ProfileWithTicketAndEntryLog?> {
  /// See also [profileWithTicketAndEntryLogUserId].
  ProfileWithTicketAndEntryLogUserIdProvider(
    String userId,
  ) : this._internal(
          (ref) => profileWithTicketAndEntryLogUserId(
            ref as ProfileWithTicketAndEntryLogUserIdRef,
            userId,
          ),
          from: profileWithTicketAndEntryLogUserIdProvider,
          name: r'profileWithTicketAndEntryLogUserIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileWithTicketAndEntryLogUserIdHash,
          dependencies: ProfileWithTicketAndEntryLogUserIdFamily._dependencies,
          allTransitiveDependencies: ProfileWithTicketAndEntryLogUserIdFamily
              ._allTransitiveDependencies,
          userId: userId,
        );

  ProfileWithTicketAndEntryLogUserIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  Override overrideWith(
    FutureOr<ProfileWithTicketAndEntryLog?> Function(
            ProfileWithTicketAndEntryLogUserIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProfileWithTicketAndEntryLogUserIdProvider._internal(
        (ref) => create(ref as ProfileWithTicketAndEntryLogUserIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProfileWithTicketAndEntryLog?>
      createElement() {
    return _ProfileWithTicketAndEntryLogUserIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileWithTicketAndEntryLogUserIdProvider &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileWithTicketAndEntryLogUserIdRef
    on AutoDisposeFutureProviderRef<ProfileWithTicketAndEntryLog?> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _ProfileWithTicketAndEntryLogUserIdProviderElement
    extends AutoDisposeFutureProviderElement<ProfileWithTicketAndEntryLog?>
    with ProfileWithTicketAndEntryLogUserIdRef {
  _ProfileWithTicketAndEntryLogUserIdProviderElement(super.provider);

  @override
  String get userId =>
      (origin as ProfileWithTicketAndEntryLogUserIdProvider).userId;
}

String _$profileWithTicketAndEntryLogTicketIdHash() =>
    r'773712d613c855152165aaf86cccde69a7c8beb7';

/// See also [profileWithTicketAndEntryLogTicketId].
@ProviderFor(profileWithTicketAndEntryLogTicketId)
const profileWithTicketAndEntryLogTicketIdProvider =
    ProfileWithTicketAndEntryLogTicketIdFamily();

/// See also [profileWithTicketAndEntryLogTicketId].
class ProfileWithTicketAndEntryLogTicketIdFamily
    extends Family<AsyncValue<ProfileWithTicketAndEntryLog?>> {
  /// See also [profileWithTicketAndEntryLogTicketId].
  const ProfileWithTicketAndEntryLogTicketIdFamily();

  /// See also [profileWithTicketAndEntryLogTicketId].
  ProfileWithTicketAndEntryLogTicketIdProvider call(
    String ticketId,
  ) {
    return ProfileWithTicketAndEntryLogTicketIdProvider(
      ticketId,
    );
  }

  @override
  ProfileWithTicketAndEntryLogTicketIdProvider getProviderOverride(
    covariant ProfileWithTicketAndEntryLogTicketIdProvider provider,
  ) {
    return call(
      provider.ticketId,
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
  String? get name => r'profileWithTicketAndEntryLogTicketIdProvider';
}

/// See also [profileWithTicketAndEntryLogTicketId].
class ProfileWithTicketAndEntryLogTicketIdProvider
    extends AutoDisposeFutureProvider<ProfileWithTicketAndEntryLog?> {
  /// See also [profileWithTicketAndEntryLogTicketId].
  ProfileWithTicketAndEntryLogTicketIdProvider(
    String ticketId,
  ) : this._internal(
          (ref) => profileWithTicketAndEntryLogTicketId(
            ref as ProfileWithTicketAndEntryLogTicketIdRef,
            ticketId,
          ),
          from: profileWithTicketAndEntryLogTicketIdProvider,
          name: r'profileWithTicketAndEntryLogTicketIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileWithTicketAndEntryLogTicketIdHash,
          dependencies:
              ProfileWithTicketAndEntryLogTicketIdFamily._dependencies,
          allTransitiveDependencies: ProfileWithTicketAndEntryLogTicketIdFamily
              ._allTransitiveDependencies,
          ticketId: ticketId,
        );

  ProfileWithTicketAndEntryLogTicketIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ticketId,
  }) : super.internal();

  final String ticketId;

  @override
  Override overrideWith(
    FutureOr<ProfileWithTicketAndEntryLog?> Function(
            ProfileWithTicketAndEntryLogTicketIdRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProfileWithTicketAndEntryLogTicketIdProvider._internal(
        (ref) => create(ref as ProfileWithTicketAndEntryLogTicketIdRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ticketId: ticketId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ProfileWithTicketAndEntryLog?>
      createElement() {
    return _ProfileWithTicketAndEntryLogTicketIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileWithTicketAndEntryLogTicketIdProvider &&
        other.ticketId == ticketId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ticketId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileWithTicketAndEntryLogTicketIdRef
    on AutoDisposeFutureProviderRef<ProfileWithTicketAndEntryLog?> {
  /// The parameter `ticketId` of this provider.
  String get ticketId;
}

class _ProfileWithTicketAndEntryLogTicketIdProviderElement
    extends AutoDisposeFutureProviderElement<ProfileWithTicketAndEntryLog?>
    with ProfileWithTicketAndEntryLogTicketIdRef {
  _ProfileWithTicketAndEntryLogTicketIdProviderElement(super.provider);

  @override
  String get ticketId =>
      (origin as ProfileWithTicketAndEntryLogTicketIdProvider).ticketId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
