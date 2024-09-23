import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/feature/payment/data/model/payment_url.dart';
import 'package:ticket_web/feature/payment/data/payment_url_provider.dart';
import 'package:url_launcher/url_launcher.dart';

part 'payment_service.g.dart';

@Riverpod(keepAlive: true)
PaymentService paymentService(PaymentServiceRef ref) {
  return PaymentService(
    url: ref.watch(paymentUrlProvider),
  );
}

class PaymentService {
  PaymentService({
    required PaymentUrl url,
  }) : _url = url;

  final PaymentUrl _url;

  Future<bool> transitionToPayment({
    required PaymentType type,
    required String mailAddress,
    String? promotionCode,
  }) async {
    final uri = _generateUri(
      type: type,
      mailAddress: mailAddress,
      promotionCode: promotionCode,
    );

    return launchUrl(
      uri,
    );
  }

  Uri _generateUri({
    required PaymentType type,
    required String mailAddress,
    String? promotionCode,
  }) {
    final url = switch (type) {
      PaymentType.general => _url.general,
      PaymentType.invitation => _url.invitation,
    };

    // See https://docs.stripe.com/payment-links/customize#customize-checkout-with-url-parameters
    final queryParameters = <String, String>{
      'prefilled_email': mailAddress,
      if (promotionCode != null) 'promotion_code': promotionCode,
    };

    final uri = Uri.parse(url).replace(queryParameters: queryParameters);
    return uri;
  }
}

enum PaymentType {
  general,
  invitation,
  ;
}
