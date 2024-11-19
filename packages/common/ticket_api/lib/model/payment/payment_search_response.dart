import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_search_response.freezed.dart';
part 'payment_search_response.g.dart';

@freezed
class PaymentSearchResponse with _$PaymentSearchResponse {
  const factory PaymentSearchResponse({
    required String id,
    required int amount,
    required String currency,
    required DateTime createdAt,
    String? cardLast4,
  }) = _PaymentSearchResponse;

  factory PaymentSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentSearchResponseFromJson(json);
}
