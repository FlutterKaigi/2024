import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/features/payment/data/payment_repository.dart';

class PaymentRefundModal extends HookConsumerWidget {
  const PaymentRefundModal({
    required this.paymentIntent,
    required this.userId,
    super.key,
  });

  final String paymentIntent;
  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '返金確認',
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Text(
              '以下の支払いを返金します。この操作は取り消せません。',
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Intent',
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(paymentIntent),
                    const SizedBox(height: 8),
                    Text(
                      'User ID',
                      style: theme.textTheme.titleSmall,
                    ),
                    Text(userId),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: isLoading.value
                      ? null
                      : () => Navigator.of(context).pop(),
                  child: const Text('キャンセル'),
                ),
                const SizedBox(width: 8),
                FilledButton(
                  onPressed: isLoading.value
                      ? null
                      : () async {
                          isLoading.value = true;
                          try {
                            final repository =
                                ref.read(paymentRepositoryProvider);
                            final result = await repository.refundPayment(
                              paymentIntent: paymentIntent,
                              userId: userId,
                            );
                            if (context.mounted) {
                              Navigator.of(context).pop(result);
                            }
                          } catch (e) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('返金に失敗しました: $e'),
                                ),
                              );
                            }
                          } finally {
                            isLoading.value = false;
                          }
                        },
                  child: isLoading.value
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        )
                      : const Text('返金する'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
