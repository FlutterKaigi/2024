import 'package:common_data/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_purchase_response.freezed.dart';
part 'verify_purchase_response.g.dart';

@freezed
class VerifyPurchaseResponse with _$VerifyPurchaseResponse {
  const factory VerifyPurchaseResponse({
    required Ticket ticket,
  }) = _VerifyPurchaseResponse;

  factory VerifyPurchaseResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyPurchaseResponseFromJson(json);
}
