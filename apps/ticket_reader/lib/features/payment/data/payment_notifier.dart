import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_api/model/payment/payment_search_response.dart';
import 'package:ticket_reader/features/payment/data/payment_repository.dart';

part 'payment_notifier.g.dart';

@riverpod
Future<PaymentSearchResponse> paymentSearch(
  Ref ref,
  String userId,
) async {
  final repository = ref.watch(paymentRepositoryProvider);
  return repository.searchPayments(userId);
}
