import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_api/model/ticket/promotion_metadata.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/feature/payment/data/payment_service.dart';
import 'package:ticket_web/feature/promotion_code/ui/promotion_code_verify_dialog.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
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
        onApplyCodePressed: (code) async {
          final result = await PromotionCodeVerifyDialog.show(context);
          if (result == null || !context.mounted) {
            return;
          }
          final i18n = Translations.of(context);
          await showDialog<void>(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(i18n.homePage.tickets.invitation.validation.ok),
              content: Text(
                switch (result.$1) {
                  PromotionMetadataGeneral() =>
                    i18n.homePage.tickets.invitation.validation.nextPayment,
                  _ => i18n
                      .homePage.tickets.invitation.validation.nextConfirmOrder,
                },
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    i18n.homePage.tickets.invitation.validation.dialog.cancel,
                  ),
                ),
                TextButton(
                  onPressed: () async {
                    final paymentService = ref.read(paymentServiceProvider);
                    await paymentService.transitionToPayment(
                      mailAddress: authState!.email!,
                      type: switch (result.$1) {
                        PromotionMetadataGeneral() => PaymentType.general,
                        _ => PaymentType.invitation,
                      },
                      promotionCode: result.$2,
                    );
                  },
                  child: Text(
                    i18n.homePage.tickets.invitation.validation.dialog.ok,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      PersonalSponsorTicketCard(
        isLoggedIn: isLoggedIn,
        onPurchasePressed: () async =>
            ref.read(paymentServiceProvider).transitionToPayment(
                  mailAddress: authState!.email!,
                  type: PaymentType.invitation,
                ),
      ),
    ];
    if (isMobile) {
      return IntrinsicWidth(
        child: Column(
          children: children,
        ),
      );
    }
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children
            .map(
              (e) => SizedBox(width: desktopThreshold / 2, child: e),
            )
            .toList(),
      ),
    );
  }
}
