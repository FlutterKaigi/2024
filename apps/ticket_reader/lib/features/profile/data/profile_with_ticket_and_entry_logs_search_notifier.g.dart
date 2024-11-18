// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'profile_with_ticket_and_entry_logs_search_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileWithTicketAndEntryLogSearchNotifierHash() =>
    r'bd5226900df4bff98ac1b6eb4ebf1e6a43a51539';

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

abstract class _$ProfileWithTicketAndEntryLogSearchNotifier
    extends BuildlessAsyncNotifier<
        PagingResult<List<ProfileWithTicketAndEntryLog>>> {
  late final ProfileWithTicketAndEntryLogArgument? argument;

  FutureOr<PagingResult<List<ProfileWithTicketAndEntryLog>>> build({
    ProfileWithTicketAndEntryLogArgument? argument,
  });
}

/// プロフィールとそれに紐づくチケットと入場履歴を取得するためのNotifier
/// 検索条件を指定することで フィルターをかけることができます
/// [_pageSize] はページングのサイズを表します
///
/// Copied from [ProfileWithTicketAndEntryLogSearchNotifier].
@ProviderFor(ProfileWithTicketAndEntryLogSearchNotifier)
const profileWithTicketAndEntryLogSearchNotifierProvider =
    ProfileWithTicketAndEntryLogSearchNotifierFamily();

/// プロフィールとそれに紐づくチケットと入場履歴を取得するためのNotifier
/// 検索条件を指定することで フィルターをかけることができます
/// [_pageSize] はページングのサイズを表します
///
/// Copied from [ProfileWithTicketAndEntryLogSearchNotifier].
class ProfileWithTicketAndEntryLogSearchNotifierFamily extends Family<
    AsyncValue<PagingResult<List<ProfileWithTicketAndEntryLog>>>> {
  /// プロフィールとそれに紐づくチケットと入場履歴を取得するためのNotifier
  /// 検索条件を指定することで フィルターをかけることができます
  /// [_pageSize] はページングのサイズを表します
  ///
  /// Copied from [ProfileWithTicketAndEntryLogSearchNotifier].
  const ProfileWithTicketAndEntryLogSearchNotifierFamily();

  /// プロフィールとそれに紐づくチケットと入場履歴を取得するためのNotifier
  /// 検索条件を指定することで フィルターをかけることができます
  /// [_pageSize] はページングのサイズを表します
  ///
  /// Copied from [ProfileWithTicketAndEntryLogSearchNotifier].
  ProfileWithTicketAndEntryLogSearchNotifierProvider call({
    ProfileWithTicketAndEntryLogArgument? argument,
  }) {
    return ProfileWithTicketAndEntryLogSearchNotifierProvider(
      argument: argument,
    );
  }

  @override
  ProfileWithTicketAndEntryLogSearchNotifierProvider getProviderOverride(
    covariant ProfileWithTicketAndEntryLogSearchNotifierProvider provider,
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
  String? get name => r'profileWithTicketAndEntryLogSearchNotifierProvider';
}

/// プロフィールとそれに紐づくチケットと入場履歴を取得するためのNotifier
/// 検索条件を指定することで フィルターをかけることができます
/// [_pageSize] はページングのサイズを表します
///
/// Copied from [ProfileWithTicketAndEntryLogSearchNotifier].
class ProfileWithTicketAndEntryLogSearchNotifierProvider
    extends AsyncNotifierProviderImpl<
        ProfileWithTicketAndEntryLogSearchNotifier,
        PagingResult<List<ProfileWithTicketAndEntryLog>>> {
  /// プロフィールとそれに紐づくチケットと入場履歴を取得するためのNotifier
  /// 検索条件を指定することで フィルターをかけることができます
  /// [_pageSize] はページングのサイズを表します
  ///
  /// Copied from [ProfileWithTicketAndEntryLogSearchNotifier].
  ProfileWithTicketAndEntryLogSearchNotifierProvider({
    ProfileWithTicketAndEntryLogArgument? argument,
  }) : this._internal(
          () =>
              ProfileWithTicketAndEntryLogSearchNotifier()..argument = argument,
          from: profileWithTicketAndEntryLogSearchNotifierProvider,
          name: r'profileWithTicketAndEntryLogSearchNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileWithTicketAndEntryLogSearchNotifierHash,
          dependencies:
              ProfileWithTicketAndEntryLogSearchNotifierFamily._dependencies,
          allTransitiveDependencies:
              ProfileWithTicketAndEntryLogSearchNotifierFamily
                  ._allTransitiveDependencies,
          argument: argument,
        );

  ProfileWithTicketAndEntryLogSearchNotifierProvider._internal(
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
    covariant ProfileWithTicketAndEntryLogSearchNotifier notifier,
  ) {
    return notifier.build(
      argument: argument,
    );
  }

  @override
  Override overrideWith(
      ProfileWithTicketAndEntryLogSearchNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileWithTicketAndEntryLogSearchNotifierProvider._internal(
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
  AsyncNotifierProviderElement<ProfileWithTicketAndEntryLogSearchNotifier,
      PagingResult<List<ProfileWithTicketAndEntryLog>>> createElement() {
    return _ProfileWithTicketAndEntryLogSearchNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileWithTicketAndEntryLogSearchNotifierProvider &&
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
mixin ProfileWithTicketAndEntryLogSearchNotifierRef on AsyncNotifierProviderRef<
    PagingResult<List<ProfileWithTicketAndEntryLog>>> {
  /// The parameter `argument` of this provider.
  ProfileWithTicketAndEntryLogArgument? get argument;
}

class _ProfileWithTicketAndEntryLogSearchNotifierProviderElement
    extends AsyncNotifierProviderElement<
        ProfileWithTicketAndEntryLogSearchNotifier,
        PagingResult<List<ProfileWithTicketAndEntryLog>>>
    with ProfileWithTicketAndEntryLogSearchNotifierRef {
  _ProfileWithTicketAndEntryLogSearchNotifierProviderElement(super.provider);

  @override
  ProfileWithTicketAndEntryLogArgument? get argument =>
      (origin as ProfileWithTicketAndEntryLogSearchNotifierProvider).argument;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
