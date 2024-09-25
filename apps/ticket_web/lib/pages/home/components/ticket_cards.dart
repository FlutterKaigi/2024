import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/feature/payment/data/payment_service.dart';
import 'package:ticket_web/pages/home/components/ticket_cards/normal_ticket.dart';
import 'package:ticket_web/pages/home/components/ticket_cards/personal_sponsor_ticket.dart';

class TicketCards extends ConsumerWidget {
  const TicketCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    final authState = ref.watch(authNotifierProvider);
    final isLoggedIn = authState != null;

    final children = [
      NormalTicketCard(
        isLoggedIn: isLoggedIn,
        onPurchasePressed: () async =>
            ref.read(paymentServiceProvider).transitionToPayment(
                  mailAddress: authState!.email!,
                  type: PaymentType.general,
                ),
        onSignInPressed:
            ref.read(authNotifierProvider.notifier).signInWithGoogle,
      ),
      PersonalSponsorTicketCard(
        isLoggedIn: isLoggedIn,
        onPurchasePressed: () {},
      ),
    ];
    if (isMobile) {
      return Wrap(
        children: children,
      );
    }
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
