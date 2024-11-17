// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'profile_with_ticket_and_entry_log_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileWithTicketAndEntryLogNotifierHash() =>
    r'6328b73be71d35b5aafc8bcb7c3263dd87246391';

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

abstract class _$ProfileWithTicketAndEntryLogNotifier
    extends BuildlessAsyncNotifier<
        PagingResult<List<ProfileWithTicketAndEntryLog>>> {
  late final ProfileWithTicketAndEntryLogArgument? argument;

  FutureOr<PagingResult<List<ProfileWithTicketAndEntryLog>>> build({
    ProfileWithTicketAndEntryLogArgument? argument,
  });
}

/// See also [ProfileWithTicketAndEntryLogNotifier].
@ProviderFor(ProfileWithTicketAndEntryLogNotifier)
const profileWithTicketAndEntryLogNotifierProvider =
    ProfileWithTicketAndEntryLogNotifierFamily();

/// See also [ProfileWithTicketAndEntryLogNotifier].
class ProfileWithTicketAndEntryLogNotifierFamily extends Family<
    AsyncValue<PagingResult<List<ProfileWithTicketAndEntryLog>>>> {
  /// See also [ProfileWithTicketAndEntryLogNotifier].
  const ProfileWithTicketAndEntryLogNotifierFamily();

  /// See also [ProfileWithTicketAndEntryLogNotifier].
  ProfileWithTicketAndEntryLogNotifierProvider call({
    ProfileWithTicketAndEntryLogArgument? argument,
  }) {
    return ProfileWithTicketAndEntryLogNotifierProvider(
      argument: argument,
    );
  }

  @override
  ProfileWithTicketAndEntryLogNotifierProvider getProviderOverride(
    covariant ProfileWithTicketAndEntryLogNotifierProvider provider,
  ) {
    return call(
      argument: provider.argument,
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
  String? get name => r'profileWithTicketAndEntryLogNotifierProvider';
}

/// See also [ProfileWithTicketAndEntryLogNotifier].
class ProfileWithTicketAndEntryLogNotifierProvider
    extends AsyncNotifierProviderImpl<ProfileWithTicketAndEntryLogNotifier,
        PagingResult<List<ProfileWithTicketAndEntryLog>>> {
  /// See also [ProfileWithTicketAndEntryLogNotifier].
  ProfileWithTicketAndEntryLogNotifierProvider({
    ProfileWithTicketAndEntryLogArgument? argument,
  }) : this._internal(
          () => ProfileWithTicketAndEntryLogNotifier()..argument = argument,
          from: profileWithTicketAndEntryLogNotifierProvider,
          name: r'profileWithTicketAndEntryLogNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileWithTicketAndEntryLogNotifierHash,
          dependencies:
              ProfileWithTicketAndEntryLogNotifierFamily._dependencies,
          allTransitiveDependencies: ProfileWithTicketAndEntryLogNotifierFamily
              ._allTransitiveDependencies,
          argument: argument,
        );

  ProfileWithTicketAndEntryLogNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.argument,
  }) : super.internal();

  final ProfileWithTicketAndEntryLogArgument? argument;

  @override
  FutureOr<PagingResult<List<ProfileWithTicketAndEntryLog>>> runNotifierBuild(
    covariant ProfileWithTicketAndEntryLogNotifier notifier,
  ) {
    return notifier.build(
      argument: argument,
    );
  }

  @override
  Override overrideWith(
      ProfileWithTicketAndEntryLogNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileWithTicketAndEntryLogNotifierProvider._internal(
        () => create()..argument = argument,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        argument: argument,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<ProfileWithTicketAndEntryLogNotifier,
      PagingResult<List<ProfileWithTicketAndEntryLog>>> createElement() {
    return _ProfileWithTicketAndEntryLogNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileWithTicketAndEntryLogNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, argument.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileWithTicketAndEntryLogNotifierRef on AsyncNotifierProviderRef<
    PagingResult<List<ProfileWithTicketAndEntryLog>>> {
  /// The parameter `argument` of this provider.
  ProfileWithTicketAndEntryLogArgument? get argument;
}

class _ProfileWithTicketAndEntryLogNotifierProviderElement
    extends AsyncNotifierProviderElement<ProfileWithTicketAndEntryLogNotifier,
        PagingResult<List<ProfileWithTicketAndEntryLog>>>
    with ProfileWithTicketAndEntryLogNotifierRef {
  _ProfileWithTicketAndEntryLogNotifierProviderElement(super.provider);

  @override
  ProfileWithTicketAndEntryLogArgument? get argument =>
      (origin as ProfileWithTicketAndEntryLogNotifierProvider).argument;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
