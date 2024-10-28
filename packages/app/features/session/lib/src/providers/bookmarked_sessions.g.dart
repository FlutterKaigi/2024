// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarked_sessions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarkedSessionListImpl _$$BookmarkedSessionListImplFromJson(
        Map<String, dynamic> json) =>
    _$BookmarkedSessionListImpl(
      sessions: (json['sessions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$BookmarkedSessionListImplToJson(
        _$BookmarkedSessionListImpl instance) =>
    <String, dynamic>{
      'sessions': instance.sessions.toList(),
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isBookmarkedHash() => r'faff67f95830a9c8db479c287649769a1a62c3a3';

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

/// See also [isBookmarked].
@ProviderFor(isBookmarked)
const isBookmarkedProvider = IsBookmarkedFamily();

/// See also [isBookmarked].
class IsBookmarkedFamily extends Family<bool> {
  /// See also [isBookmarked].
  const IsBookmarkedFamily();

  /// See also [isBookmarked].
  IsBookmarkedProvider call({
    required String sessionId,
  }) {
    return IsBookmarkedProvider(
      sessionId: sessionId,
    );
  }

  @override
  IsBookmarkedProvider getProviderOverride(
    covariant IsBookmarkedProvider provider,
  ) {
    return call(
      sessionId: provider.sessionId,
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
  String? get name => r'isBookmarkedProvider';
}

/// See also [isBookmarked].
class IsBookmarkedProvider extends AutoDisposeProvider<bool> {
  /// See also [isBookmarked].
  IsBookmarkedProvider({
    required String sessionId,
  }) : this._internal(
          (ref) => isBookmarked(
            ref as IsBookmarkedRef,
            sessionId: sessionId,
          ),
          from: isBookmarkedProvider,
          name: r'isBookmarkedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$isBookmarkedHash,
          dependencies: IsBookmarkedFamily._dependencies,
          allTransitiveDependencies:
              IsBookmarkedFamily._allTransitiveDependencies,
          sessionId: sessionId,
        );

  IsBookmarkedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sessionId,
  }) : super.internal();

  final String sessionId;

  @override
  Override overrideWith(
    bool Function(IsBookmarkedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IsBookmarkedProvider._internal(
        (ref) => create(ref as IsBookmarkedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sessionId: sessionId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _IsBookmarkedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IsBookmarkedProvider && other.sessionId == sessionId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sessionId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IsBookmarkedRef on AutoDisposeProviderRef<bool> {
  /// The parameter `sessionId` of this provider.
  String get sessionId;
}

class _IsBookmarkedProviderElement extends AutoDisposeProviderElement<bool>
    with IsBookmarkedRef {
  _IsBookmarkedProviderElement(super.provider);

  @override
  String get sessionId => (origin as IsBookmarkedProvider).sessionId;
}

String _$bookmarkedSessionsHash() =>
    r'068b306dc6e33d890178f3917d0d499a280dda66';

/// See also [BookmarkedSessions].
@ProviderFor(BookmarkedSessions)
final bookmarkedSessionsProvider = AutoDisposeNotifierProvider<
    BookmarkedSessions, BookmarkedSessionList>.internal(
  BookmarkedSessions.new,
  name: r'bookmarkedSessionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bookmarkedSessionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$BookmarkedSessions = AutoDisposeNotifier<BookmarkedSessionList>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
