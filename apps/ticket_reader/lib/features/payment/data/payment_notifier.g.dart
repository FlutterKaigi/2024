// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'payment_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$paymentSearchHash() => r'bc23d98eb4ab1126657c95989132a99cccc00338';

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

/// See also [paymentSearch].
@ProviderFor(paymentSearch)
const paymentSearchProvider = PaymentSearchFamily();

/// See also [paymentSearch].
class PaymentSearchFamily extends Family<AsyncValue<PaymentSearchResponse>> {
  /// See also [paymentSearch].
  const PaymentSearchFamily();

  /// See also [paymentSearch].
  PaymentSearchProvider call(
    String userId,
  ) {
    return PaymentSearchProvider(
      userId,
    );
  }

  @override
  PaymentSearchProvider getProviderOverride(
    covariant PaymentSearchProvider provider,
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
  String? get name => r'paymentSearchProvider';
}

/// See also [paymentSearch].
class PaymentSearchProvider
    extends AutoDisposeFutureProvider<PaymentSearchResponse> {
  /// See also [paymentSearch].
  PaymentSearchProvider(
    String userId,
  ) : this._internal(
          (ref) => paymentSearch(
            ref as PaymentSearchRef,
            userId,
          ),
          from: paymentSearchProvider,
          name: r'paymentSearchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paymentSearchHash,
          dependencies: PaymentSearchFamily._dependencies,
          allTransitiveDependencies:
              PaymentSearchFamily._allTransitiveDependencies,
          userId: userId,
        );

  PaymentSearchProvider._internal(
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
    FutureOr<PaymentSearchResponse> Function(PaymentSearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PaymentSearchProvider._internal(
        (ref) => create(ref as PaymentSearchRef),
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
  AutoDisposeFutureProviderElement<PaymentSearchResponse> createElement() {
    return _PaymentSearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaymentSearchProvider && other.userId == userId;
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
mixin PaymentSearchRef on AutoDisposeFutureProviderRef<PaymentSearchResponse> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _PaymentSearchProviderElement
    extends AutoDisposeFutureProviderElement<PaymentSearchResponse>
    with PaymentSearchRef {
  _PaymentSearchProviderElement(super.provider);

  @override
  String get userId => (origin as PaymentSearchProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
