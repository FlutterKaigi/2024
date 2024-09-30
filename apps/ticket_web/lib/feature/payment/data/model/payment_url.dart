import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_url.freezed.dart';
part 'payment_url.g.dart';

@freezed
class PaymentUrl with _$PaymentUrl {
  const factory PaymentUrl({
    required String general,
    required String invitation,
    required String personalSponsor,
  }) = _PaymentUrl;

  factory PaymentUrl.fromJson(Map<String, dynamic> json) =>
      _$PaymentUrlFromJson(json);
}
