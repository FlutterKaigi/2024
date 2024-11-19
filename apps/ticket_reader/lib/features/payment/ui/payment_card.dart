import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ticket_api/model/payment/payment_search_response.dart';
import 'package:ticket_reader/features/payment/ui/payment_refund_modal.dart';

class PaymentCard extends ConsumerWidget {
  const PaymentCard({
    required this.payment,
    this.userId,
    super.key,
  });

  final PaymentSearchResponse payment;
  final String? userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final currencyFormatter = NumberFormat.currency(
      locale: 'ja_JP',
      symbol: '¥',
      decimalDigits: 0,
    );

    final dateFormatter = DateFormat('yyyy/MM/dd HH:mm');

    return Card.outlined(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currencyFormatter.format(payment.amount),
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onPrimaryContainer,
                        fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                      ),
                    ),
                    if (payment.cardLast4 != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        'カード末尾4桁: ${payment.cardLast4}',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onPrimaryContainer,
                          fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                        ),
                      ),
                    ],
                  ],
                ),
                if (userId != null)
                  FilledButton.icon(
                    onPressed: () async => showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      useSafeArea: true,
                      builder: (context) => PaymentRefundModal(
                        paymentIntent: payment.id,
                        userId: userId!,
                      ),
                    ),
                    style: FilledButton.styleFrom(
                      backgroundColor: colorScheme.errorContainer,
                      foregroundColor: colorScheme.onErrorContainer,
                    ),
                    icon: Icon(
                      Icons.money_off,
                      color: colorScheme.onErrorContainer,
                    ),
                    label: const Text('返金'),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Divider(
              color: colorScheme.onPrimaryContainer,
            ),
            const SizedBox(height: 8),
            Text(
              'Payment Intent',
              style: theme.textTheme.titleSmall?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              payment.id,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '作成日時',
              style: theme.textTheme.titleSmall?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              dateFormatter.format(payment.createdAt.toLocal()),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onPrimaryContainer,
                fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
