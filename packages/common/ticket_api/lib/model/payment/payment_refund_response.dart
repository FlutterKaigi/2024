import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_refund_response.freezed.dart';
part 'payment_refund_response.g.dart';

@freezed
class PaymentRefundResponse with _$PaymentRefundResponse {
  const factory PaymentRefundResponse({
    required String refund,
  }) = _PaymentRefundResponse;

  factory PaymentRefundResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentRefundResponseFromJson(json);
}
