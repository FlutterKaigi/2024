// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_sessions_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$specialSessionsHash() => r'8e96d1a20d0703aab26568413887d04da7cc29df';

/// See also [specialSessions].
@ProviderFor(specialSessions)
final specialSessionsProvider = Provider<List<SpecialSession>>.internal(
  specialSessions,
  name: r'specialSessionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$specialSessionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SpecialSessionsRef = ProviderRef<List<SpecialSession>>;
String _$specialSessionsByDateHash() =>
    r'7267db82c79f52002a0d3019850f732b55b6ee39';

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

/// See also [specialSessionsByDate].
@ProviderFor(specialSessionsByDate)
const specialSessionsByDateProvider = SpecialSessionsByDateFamily();

/// See also [specialSessionsByDate].
class SpecialSessionsByDateFamily extends Family<List<SpecialSession>> {
  /// See also [specialSessionsByDate].
  const SpecialSessionsByDateFamily();

  /// See also [specialSessionsByDate].
  SpecialSessionsByDateProvider call(
    EventDate date,
  ) {
    return SpecialSessionsByDateProvider(
      date,
    );
  }

  @override
  SpecialSessionsByDateProvider getProviderOverride(
    covariant SpecialSessionsByDateProvider provider,
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
  String? get name => r'specialSessionsByDateProvider';
}

/// See also [specialSessionsByDate].
class SpecialSessionsByDateProvider extends Provider<List<SpecialSession>> {
  /// See also [specialSessionsByDate].
  SpecialSessionsByDateProvider(
    EventDate date,
  ) : this._internal(
          (ref) => specialSessionsByDate(
            ref as SpecialSessionsByDateRef,
            date,
          ),
          from: specialSessionsByDateProvider,
          name: r'specialSessionsByDateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$specialSessionsByDateHash,
          dependencies: SpecialSessionsByDateFamily._dependencies,
          allTransitiveDependencies:
              SpecialSessionsByDateFamily._allTransitiveDependencies,
          date: date,
        );

  SpecialSessionsByDateProvider._internal(
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
    List<SpecialSession> Function(SpecialSessionsByDateRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SpecialSessionsByDateProvider._internal(
        (ref) => create(ref as SpecialSessionsByDateRef),
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
  ProviderElement<List<SpecialSession>> createElement() {
    return _SpecialSessionsByDateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SpecialSessionsByDateProvider && other.date == date;
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
mixin SpecialSessionsByDateRef on ProviderRef<List<SpecialSession>> {
  /// The parameter `date` of this provider.
  EventDate get date;
}

class _SpecialSessionsByDateProviderElement
    extends ProviderElement<List<SpecialSession>>
    with SpecialSessionsByDateRef {
  _SpecialSessionsByDateProviderElement(super.provider);

  @override
  EventDate get date => (origin as SpecialSessionsByDateProvider).date;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
