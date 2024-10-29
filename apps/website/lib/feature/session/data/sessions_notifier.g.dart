// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionsHash() => r'8396d41759b902ca6e0933bed04dbe6233d9c321';

/// See also [sessions].
@ProviderFor(sessions)
final sessionsProvider =
    FutureProvider<List<SessionVenuesWithSessions>>.internal(
  sessions,
  name: r'sessionsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$sessionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SessionsRef = FutureProviderRef<List<SessionVenuesWithSessions>>;
String _$sessionsByDateHash() => r'8319396f4a3d5b58ce0b77db1f099745b23e0598';

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
    extends Family<AsyncValue<List<SessionVenuesWithSessions>>> {
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
    extends AutoDisposeFutureProvider<List<SessionVenuesWithSessions>> {
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
    FutureOr<List<SessionVenuesWithSessions>> Function(
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
  AutoDisposeFutureProviderElement<List<SessionVenuesWithSessions>>
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
    on AutoDisposeFutureProviderRef<List<SessionVenuesWithSessions>> {
  /// The parameter `date` of this provider.
  EventDate get date;
}

class _SessionsByDateProviderElement
    extends AutoDisposeFutureProviderElement<List<SessionVenuesWithSessions>>
    with SessionsByDateRef {
  _SessionsByDateProviderElement(super.provider);

  @override
  EventDate get date => (origin as SessionsByDateProvider).date;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
