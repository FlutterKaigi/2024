import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/core/components/error/error_card.dart';
import 'package:ticket_reader/features/payment/data/payment_notifier.dart';
import 'package:ticket_reader/features/payment/ui/payment_card.dart';

class PaymentSearchRoute extends GoRouteData {
  const PaymentSearchRoute({
    required this.userId,
  });

  final String userId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PaymentSearchPage(
      userId: userId,
    );
  }
}

class PaymentSearchPage extends HookConsumerWidget {
  const PaymentSearchPage({
    required this.userId,
    super.key,
  });

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('支払い検索'),
      ),
      body: Consumer(
        builder: (context, ref, _) {
          final payments = ref.watch(
            paymentSearchProvider(userId),
          );

          return payments.when(
            data: (data) => SingleChildScrollView(
              child: PaymentCard(
                payment: data,
                userId: userId,
              ),
            ),
            error: (error, _) => Center(
              child: SingleChildScrollView(
                child: ErrorCard(
                  error: error,
                  onReload: () async => ref.refresh(
                    paymentSearchProvider(userId),
                  ),
                ),
              ),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        },
      ),
    );
  }
}
