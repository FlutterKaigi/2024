// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'sessions_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionsHash() => r'a778d1c8351f7d439c2ea7273e1e97d1a627f6ee';

/// See also [sessions].
@ProviderFor(sessions)
final sessionsProvider =
    FutureProvider<List<SessionVenuesWithSessionsV2>>.internal(
  sessions,
  name: r'sessionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sessionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SessionsRef = FutureProviderRef<List<SessionVenuesWithSessionsV2>>;
String _$sessionsByDateHash() => r'160f42e00b7beace96f3afe47ea1d67036a03c1d';

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

/// See also [sessionsByDate].
@ProviderFor(sessionsByDate)
const sessionsByDateProvider = SessionsByDateFamily();

/// See also [sessionsByDate].
class SessionsByDateFamily
    extends Family<AsyncValue<List<SessionVenuesWithSessionsV2>>> {
  /// See also [sessionsByDate].
  const SessionsByDateFamily();

  /// See also [sessionsByDate].
  SessionsByDateProvider call(
    EventDate date,
  ) {
    return SessionsByDateProvider(
      date,
    );
  }

  @override
  SessionsByDateProvider getProviderOverride(
    covariant SessionsByDateProvider provider,
  ) {
    return call(
      provider.date,
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
  String? get name => r'sessionsByDateProvider';
}

/// See also [sessionsByDate].
class SessionsByDateProvider
    extends AutoDisposeFutureProvider<List<SessionVenuesWithSessionsV2>> {
  /// See also [sessionsByDate].
  SessionsByDateProvider(
    EventDate date,
  ) : this._internal(
          (ref) => sessionsByDate(
            ref as SessionsByDateRef,
            date,
          ),
          from: sessionsByDateProvider,
          name: r'sessionsByDateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sessionsByDateHash,
          dependencies: SessionsByDateFamily._dependencies,
          allTransitiveDependencies:
              SessionsByDateFamily._allTransitiveDependencies,
          date: date,
        );

  SessionsByDateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.date,
  }) : super.internal();

  final EventDate date;

  @override
  Override overrideWith(
    FutureOr<List<SessionVenuesWithSessionsV2>> Function(
            SessionsByDateRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SessionsByDateProvider._internal(
        (ref) => create(ref as SessionsByDateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<SessionVenuesWithSessionsV2>>
      createElement() {
    return _SessionsByDateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionsByDateProvider && other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SessionsByDateRef
    on AutoDisposeFutureProviderRef<List<SessionVenuesWithSessionsV2>> {
  /// The parameter `date` of this provider.
  EventDate get date;
}

class _SessionsByDateProviderElement
    extends AutoDisposeFutureProviderElement<List<SessionVenuesWithSessionsV2>>
    with SessionsByDateRef {
  _SessionsByDateProviderElement(super.provider);

  @override
  EventDate get date => (origin as SessionsByDateProvider).date;
}

String _$sessionDetailsHash() => r'ac5c74b76ed174d1e073f776eedd279546cfefcf';

/// See also [sessionDetails].
@ProviderFor(sessionDetails)
const sessionDetailsProvider = SessionDetailsFamily();

/// See also [sessionDetails].
class SessionDetailsFamily extends Family<AsyncValue<SessionDetails>> {
  /// See also [sessionDetails].
  const SessionDetailsFamily();

  /// See also [sessionDetails].
  SessionDetailsProvider call(
    String sessionId,
  ) {
    return SessionDetailsProvider(
      sessionId,
    );
  }

  @override
  SessionDetailsProvider getProviderOverride(
    covariant SessionDetailsProvider provider,
  ) {
    return call(
      provider.sessionId,
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
  String? get name => r'sessionDetailsProvider';
}

/// See also [sessionDetails].
class SessionDetailsProvider extends FutureProvider<SessionDetails> {
  /// See also [sessionDetails].
  SessionDetailsProvider(
    String sessionId,
  ) : this._internal(
          (ref) => sessionDetails(
            ref as SessionDetailsRef,
            sessionId,
          ),
          from: sessionDetailsProvider,
          name: r'sessionDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sessionDetailsHash,
          dependencies: SessionDetailsFamily._dependencies,
          allTransitiveDependencies:
              SessionDetailsFamily._allTransitiveDependencies,
          sessionId: sessionId,
        );

  SessionDetailsProvider._internal(
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
    FutureOr<SessionDetails> Function(SessionDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SessionDetailsProvider._internal(
        (ref) => create(ref as SessionDetailsRef),
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
  FutureProviderElement<SessionDetails> createElement() {
    return _SessionDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionDetailsProvider && other.sessionId == sessionId;
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
mixin SessionDetailsRef on FutureProviderRef<SessionDetails> {
  /// The parameter `sessionId` of this provider.
  String get sessionId;
}

class _SessionDetailsProviderElement
    extends FutureProviderElement<SessionDetails> with SessionDetailsRef {
  _SessionDetailsProviderElement(super.provider);

  @override
  String get sessionId => (origin as SessionDetailsProvider).sessionId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
