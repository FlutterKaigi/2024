import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/core/components/error/error_card.dart';
import 'package:ticket_reader/features/payment/data/payment_notifier.dart';
import 'package:ticket_reader/features/payment/ui/payment_card.dart';

class PaymentSearchRoute extends GoRouteData {
  const PaymentSearchRoute({
    this.email,
    this.userId,
  });

  final String? email;
  final String? userId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PaymentSearchPage(
      initialEmail: email,
      userId: userId,
    );
  }
}

class PaymentSearchPage extends HookConsumerWidget {
  const PaymentSearchPage({
    this.initialEmail,
    this.userId,
    super.key,
  });

  final String? initialEmail;
  final String? userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController(text: initialEmail);
    final email = useState<String?>(initialEmail);

    return Scaffold(
      appBar: AppBar(
        title: const Text('支払い検索'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'メールアドレス',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    email.value = emailController.text;
                    FocusScope.of(context).unfocus();
                  },
                ),
              ),
            ),
          ),
          if (email.value != null)
            Expanded(
              child: Consumer(
                builder: (context, ref, _) {
                  final payments = ref.watch(
                    paymentSearchProvider(email.value!),
                  );

                  return payments.when(
                    data: (data) => ListView.builder(
                      padding: const EdgeInsets.all(16),
                      itemCount: data.results.length,
                      itemBuilder: (context, index) {
                        return PaymentCard(
                          payment: data.results[index],
                          userId: userId,
                        );
                      },
                    ),
                    error: (error, _) => Center(
                      child: SingleChildScrollView(
                        child: ErrorCard(
                          error: error,
                          onReload: () async => ref.refresh(
                            paymentSearchProvider(email.value!),
                          ),
                        ),
                      ),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
