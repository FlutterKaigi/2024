import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_api/ticket_api.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/core/provider/ticket_api_base_url_provider.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/feature/payment/data/payment_service.dart';
import 'package:ticket_web/pages/home/components/ticket_cards/invitation_ticket.dart';
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
      InvitationTicketCard(
        isLoggedIn: isLoggedIn,
        onApplyCodePressed: (code) async {
          try {
            final baseUrl = ref.read(ticketApiBaseUrlProvider);
            final verifyResult = await ref
                .read(ticketApiClientProvider(baseUrl))
                .getPromotion(code: code);
            final metadata = verifyResult.metadata;
            await metadata.mapOrNull(
              general: (value) =>
                  ref.read(paymentServiceProvider).transitionToPayment(
                        mailAddress: authState!.email!,
                        type: PaymentType.general,
                        promotionCode: code,
                      ),
              session: (value) async {},
              sponsor: (value) async {},
              sponsorSession: (value) async {},
            );
          } on DioException catch (e) {
            if (e.response?.data case {'error': final String error}) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error)),
                );
              }
            }
          }
        },
        onSignInPressed:
            ref.read(authNotifierProvider.notifier).signInWithGoogle,
      ),
      PersonalSponsorTicketCard(
        isLoggedIn: isLoggedIn,
        onPurchasePressed: () {},
      ),
    ];
    final sizeFixedChildren = children
        .map(
          (child) => SizedBox(
            width: desktopThreshold * 2 / 3,
            child: child,
          ),
        )
        .toList();
    if (isMobile) {
      return Wrap(
        children: children,
      );
    }
    return IntrinsicHeight(
      child: Wrap(
        children: sizeFixedChildren,
      ),
    );
  }
}
