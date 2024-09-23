// ignore_for_file: do_not_use_environment

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/feature/payment/data/model/payment_url.dart';

part 'payment_url_provider.g.dart';

@Riverpod(keepAlive: true)
PaymentUrl paymentUrl(PaymentUrlRef ref) {
  const generalUrl = String.fromEnvironment('STRIPE_PAYMENT_GENERAL_URL');
  const invitationUrl = String.fromEnvironment('STRIPE_PAYMENT_INVITATION_URL');

  if (generalUrl.isEmpty || invitationUrl.isEmpty) {
    throw Exception(
      'STRIPE_PAYMENT_GENERAL_URL or STRIPE_PAYMENT_INVITATION_URL is not set',
    );
  }

  return const PaymentUrl(
    general: generalUrl,
    invitation: invitationUrl,
  );
}
