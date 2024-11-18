import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_search_response.freezed.dart';
part 'payment_search_response.g.dart';

@freezed
class PaymentSearchResponse with _$PaymentSearchResponse {
  const factory PaymentSearchResponse({
    required List<PaymentResult> results,
  }) = _PaymentSearchResponse;

  factory PaymentSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentSearchResponseFromJson(json);
}

@freezed
class PaymentResult with _$PaymentResult {
  const factory PaymentResult({
    required String paymentIntent,
    required int amount,
    required DateTime createdAt,
  }) = _PaymentResult;

  factory PaymentResult.fromJson(Map<String, dynamic> json) =>
      _$PaymentResultFromJson(json);
}
