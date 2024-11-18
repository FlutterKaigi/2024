import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_api/model/payment/payment_refund_response.dart';
import 'package:ticket_api/model/payment/payment_search_response.dart';
import 'package:ticket_api/ticket_api.dart';
import 'package:ticket_reader/core/provider/environment.dart';
import 'package:ticket_reader/features/auth/data/auth_notifier.dart';

part 'payment_repository.g.dart';

@Riverpod(
  keepAlive: true,
)
PaymentRepository paymentRepository(Ref ref) {
  final environment = ref.watch(environmentProvider);
  final client =
      ref.watch(ticketApiClientProvider(environment.ticketApiBaseUrl));
  final token = ref.watch(supabaseAccessTokenProvider);
  assert(token != null, 'token is null');
  return PaymentRepository(client: client, token: token!);
}

class PaymentRepository {
  const PaymentRepository({
    required this.client,
    required this.token,
  });

  final TicketApiClient client;
  final String token;

  Future<PaymentSearchResponse> searchPayments(String email) async {
    return client.searchPayments(
      email: email,
      authorization: 'Bearer $token',
    );
  }

  Future<PaymentRefundResponse> refundPayment({
    required String paymentIntent,
    required String userId,
  }) async {
    return client.refundPayment(
      paymentIntent: paymentIntent,
      userId: userId,
      authorization: 'Bearer $token',
    );
  }
}
