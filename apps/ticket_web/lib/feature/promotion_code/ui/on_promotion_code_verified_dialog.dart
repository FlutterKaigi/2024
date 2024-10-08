import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_api/model/ticket/promotion_metadata.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/feature/payment/data/payment_service.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class OnPromotionCodeVerifiedDialog extends HookConsumerWidget {
  const OnPromotionCodeVerifiedDialog({
    required this.promotionCode,
    required this.metadata,
    super.key,
  });

  final String promotionCode;
  final PromotionMetadata metadata;

  static Future<void> show({
    required BuildContext context,
    required String promotionCode,
    required PromotionMetadata metadata,
  }) async =>
      showDialog<void>(
        context: context,
        builder: (context) => OnPromotionCodeVerifiedDialog(
          promotionCode: promotionCode,
          metadata: metadata,
        ),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return AlertDialog(
      title: Text(i18n.homePage.tickets.invitation.validation.ok),
      content: Text(
        switch (metadata.type) {
          PromotionMetadataType.general =>
            i18n.homePage.tickets.invitation.validation.nextPayment,
          _ => i18n.homePage.tickets.invitation.validation.nextConfirmOrder,
        },
        style: textTheme.bodyMedium,
      ),
      actions: [
        TextButton(
          onPressed: () async {
            final paymentService = ref.read(paymentServiceProvider);
            final email = ref.read(authNotifierProvider)!.email!;
            await paymentService.transitionToPayment(
              mailAddress: email,
              type: switch (metadata.type) {
                PromotionMetadataType.general => PaymentType.general,
                _ => PaymentType.invitation,
              },
              promotionCode: promotionCode,
            );
            if (context.mounted && Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
          child: Text(
            i18n.homePage.tickets.invitation.validation.dialog.ok,
          ),
        ),
      ],
    );
  }
}
