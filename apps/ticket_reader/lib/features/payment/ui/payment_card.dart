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

  final PaymentResult payment;
  final String? userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final currencyFormatter = NumberFormat.currency(
      locale: 'ja_JP',
      symbol: '¥',
      decimalDigits: 0,
    );

    final dateFormatter = DateFormat('yyyy/MM/dd HH:mm');

    return Card(
      child: ListTile(
        title: Text(
          currencyFormatter.format(payment.amount),
          style: theme.textTheme.titleLarge,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Intent: ${payment.paymentIntent}',
              style: theme.textTheme.bodySmall?.copyWith(
                fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
              ),
            ),
            Text(
              '作成日時: ${dateFormatter.format(payment.createdAt.toLocal())}',
              style: theme.textTheme.bodySmall?.copyWith(
                fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
              ),
            ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () async => _showPaymentMenu(context),
        ),
      ),
    );
  }

  Future<void> _showPaymentMenu(BuildContext context) async {
    final result = await showModalBottomSheet<String?>(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (userId != null)
              ListTile(
                leading: const Icon(Icons.money_off),
                title: const Text('返金'),
                onTap: () => Navigator.of(context).pop('refund'),
              ),
          ],
        ),
      ),
    );

    if (result == 'refund' && context.mounted && userId != null) {
      await showModalBottomSheet<void>(
        context: context,
        builder: (context) => PaymentRefundModal(
          paymentIntent: payment.paymentIntent,
          userId: userId!,
        ),
      );
    }
  }
}
