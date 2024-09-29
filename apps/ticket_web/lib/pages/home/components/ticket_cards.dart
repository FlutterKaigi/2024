import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/pages/home/components/ticket_cards/invitation_ticket_card.dart';
import 'package:ticket_web/pages/home/components/ticket_cards/normal_ticket_card.dart';

class TicketCards extends ConsumerWidget {
  const TicketCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    final isLoggedIn = ref.watch(authNotifierProvider) != null;

    final children = [
      NormalTicketCard(
        isLoggedIn: isLoggedIn,
        onPurchasePressed: () async {},
        onSignInPressed:
            ref.read(authNotifierProvider.notifier).signInWithGoogle,
      ),
      InvitationTicketCard(
        isLoggedIn: isLoggedIn,
        onApplyCodePressed: (code) async {},
        onSignInPressed:
            ref.read(authNotifierProvider.notifier).signInWithGoogle,
      ),
    ];
    if (isMobile) {
      return Column(
        children: children,
      );
    }
    return IntrinsicHeight(
      child: Row(
        children: children.map((child) => Expanded(child: child)).toList(),
      ),
    );
  }
}
