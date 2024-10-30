// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_timeline.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sessionTimelineHash() => r'066de6624ab3f3006b8d3fd800f3ef63421a19a6';

/// See also [sessionTimeline].
@ProviderFor(sessionTimeline)
final sessionTimelineProvider =
    AutoDisposeFutureProvider<List<TimelineItem>>.internal(
  sessionTimeline,
  name: r'sessionTimelineProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sessionTimelineHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SessionTimelineRef = AutoDisposeFutureProviderRef<List<TimelineItem>>;
String _$sessionTimelineFromDateHash() =>
    r'cef26045a77e0b57d20ff54b1688f238120a8c12';

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

/// See also [sessionTimelineFromDate].
@ProviderFor(sessionTimelineFromDate)
const sessionTimelineFromDateProvider = SessionTimelineFromDateFamily();

/// See also [sessionTimelineFromDate].
class SessionTimelineFromDateFamily
    extends Family<AsyncValue<List<TimelineItem>>> {
  /// See also [sessionTimelineFromDate].
  const SessionTimelineFromDateFamily();

  /// See also [sessionTimelineFromDate].
  SessionTimelineFromDateProvider call(
    SessionDate date,
  ) {
    return SessionTimelineFromDateProvider(
      date,
    );
  }

  @override
  SessionTimelineFromDateProvider getProviderOverride(
    covariant SessionTimelineFromDateProvider provider,
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
  String? get name => r'sessionTimelineFromDateProvider';
}

/// See also [sessionTimelineFromDate].
class SessionTimelineFromDateProvider
    extends AutoDisposeFutureProvider<List<TimelineItem>> {
  /// See also [sessionTimelineFromDate].
  SessionTimelineFromDateProvider(
    SessionDate date,
  ) : this._internal(
          (ref) => sessionTimelineFromDate(
            ref as SessionTimelineFromDateRef,
            date,
          ),
          from: sessionTimelineFromDateProvider,
          name: r'sessionTimelineFromDateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sessionTimelineFromDateHash,
          dependencies: SessionTimelineFromDateFamily._dependencies,
          allTransitiveDependencies:
              SessionTimelineFromDateFamily._allTransitiveDependencies,
          date: date,
        );

  SessionTimelineFromDateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.date,
  }) : super.internal();

  final SessionDate date;

  @override
  Override overrideWith(
    FutureOr<List<TimelineItem>> Function(SessionTimelineFromDateRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SessionTimelineFromDateProvider._internal(
        (ref) => create(ref as SessionTimelineFromDateRef),
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
  AutoDisposeFutureProviderElement<List<TimelineItem>> createElement() {
    return _SessionTimelineFromDateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SessionTimelineFromDateProvider && other.date == date;
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
mixin SessionTimelineFromDateRef
    on AutoDisposeFutureProviderRef<List<TimelineItem>> {
  /// The parameter `date` of this provider.
  SessionDate get date;
}

class _SessionTimelineFromDateProviderElement
    extends AutoDisposeFutureProviderElement<List<TimelineItem>>
    with SessionTimelineFromDateRef {
  _SessionTimelineFromDateProviderElement(super.provider);

  @override
  SessionDate get date => (origin as SessionTimelineFromDateProvider).date;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
