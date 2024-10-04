import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/core/provider/environment.dart';
import 'package:url_launcher/url_launcher.dart';

part 'payment_service.g.dart';

@Riverpod(keepAlive: true, dependencies: [environment])
PaymentService paymentService(PaymentServiceRef ref) {
  return PaymentService(
    environment: ref.watch(environmentProvider),
  );
}

class PaymentService {
  PaymentService({
    required Environment environment,
  }) : _environment = environment;

  final Environment _environment;

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
      PaymentType.general => _environment.stripePaymentGeneralUrl,
      PaymentType.invitation => _environment.stripePaymentInvitationUrl,
      PaymentType.personalSponsor =>
        _environment.stripePaymentPersonalSponsorUrl,
    };

    // See https://docs.stripe.com/payment-links/customize#customize-checkout-with-url-parameters
    final queryParameters = <String, String>{
      'prefilled_email': mailAddress,
      if (promotionCode != null) 'prefilled_promo_code': promotionCode,
    };

    final uri = Uri.parse(url).replace(queryParameters: queryParameters);
    return uri;
  }
}

enum PaymentType {
  general,
  invitation,
  personalSponsor,
  ;
}
