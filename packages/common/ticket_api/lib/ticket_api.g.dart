// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint

part of 'ticket_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _TicketApiClient implements TicketApiClient {
  _TicketApiClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<VerifyPurchaseResponse> verifyPurchase({
    required String sessionId,
    required String authorization,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'session_id': sessionId};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<VerifyPurchaseResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/v1/verify_purchase',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late VerifyPurchaseResponse _value;
    try {
      _value = VerifyPurchaseResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<GetPromotionResponse> getPromotion({required String code}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'code': code};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<GetPromotionResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/v1/promotion',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late GetPromotionResponse _value;
    try {
      _value = GetPromotionResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<PostPromotionResponse> postPromotion({
    required String authorization,
    required PostPromotionRequest body,
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': authorization};
    _headers.removeWhere((k, v) => v == null);
    final _data = body;
    final _options = _setStreamType<PostPromotionResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/v1/promotion',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PostPromotionResponse _value;
    try {
      _value = PostPromotionResponse.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ticketApiDioHash() => r'2da3dc1eb351262b1ae8d3fe9020754bd8ce8ae4';

/// See also [ticketApiDio].
@ProviderFor(ticketApiDio)
final ticketApiDioProvider = Provider<Dio>.internal(
  ticketApiDio,
  name: r'ticketApiDioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$ticketApiDioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TicketApiDioRef = ProviderRef<Dio>;
String _$ticketApiClientHash() => r'e22908ec39abf4f88ace37068e33a680f632df15';

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

/// See also [ticketApiClient].
@ProviderFor(ticketApiClient)
const ticketApiClientProvider = TicketApiClientFamily();

/// See also [ticketApiClient].
class TicketApiClientFamily extends Family<TicketApiClient> {
  /// See also [ticketApiClient].
  const TicketApiClientFamily();

  /// See also [ticketApiClient].
  TicketApiClientProvider call(
    String baseUrl,
  ) {
    return TicketApiClientProvider(
      baseUrl,
    );
  }

  @override
  TicketApiClientProvider getProviderOverride(
    covariant TicketApiClientProvider provider,
  ) {
    return call(
      provider.baseUrl,
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
  String? get name => r'ticketApiClientProvider';
}

/// See also [ticketApiClient].
class TicketApiClientProvider extends Provider<TicketApiClient> {
  /// See also [ticketApiClient].
  TicketApiClientProvider(
    String baseUrl,
  ) : this._internal(
          (ref) => ticketApiClient(
            ref as TicketApiClientRef,
            baseUrl,
          ),
          from: ticketApiClientProvider,
          name: r'ticketApiClientProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ticketApiClientHash,
          dependencies: TicketApiClientFamily._dependencies,
          allTransitiveDependencies:
              TicketApiClientFamily._allTransitiveDependencies,
          baseUrl: baseUrl,
        );

  TicketApiClientProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.baseUrl,
  }) : super.internal();

  final String baseUrl;

  @override
  Override overrideWith(
    TicketApiClient Function(TicketApiClientRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TicketApiClientProvider._internal(
        (ref) => create(ref as TicketApiClientRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        baseUrl: baseUrl,
      ),
    );
  }

  @override
  ProviderElement<TicketApiClient> createElement() {
    return _TicketApiClientProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TicketApiClientProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin TicketApiClientRef on ProviderRef<TicketApiClient> {
  /// The parameter `baseUrl` of this provider.
  String get baseUrl;
}

class _TicketApiClientProviderElement extends ProviderElement<TicketApiClient>
    with TicketApiClientRef {
  _TicketApiClientProviderElement(super.provider);

  @override
  String get baseUrl => (origin as TicketApiClientProvider).baseUrl;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
