import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_api/model/ticket/promotion_metadata.dart';
import 'package:ticket_api/ticket_api.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/core/util/result.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/feature/payment/data/payment_service.dart';
import 'package:ticket_web/feature/promotion_code/data/promotion_code_service.dart';
import 'package:ticket_web/feature/promotion_code/ui/on_promotion_code_verified_dialog.dart';
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
          final result = await FullScreenCircularProgressIndicator.showUntil(
            context,
            () async => ref.read(promotionCodeServiceProvider).verifyCode(code),
          ).wrapped();
          if (!context.mounted) {
            return;
          }
          final _ = await switch (result) {
            Failure(:final exception) => _onPromoVerifyError(
                exception,
                context,
              ),
            Success(:final value) => switch (value) {
                // プロモーションコードが、一般チケットのプロモーションコードとして有効な場合
                // 一般チケットの購入画面に遷移する
                PromotionMetadataGeneral() =>
                  OnPromotionCodeVerifiedDialog.show(
                    context: context,
                    promotionCode: code,
                    metadata: value,
                  ),
                // プロモーションコードが、招待チケットのプロモーションコードとして有効な場合
                _ => () async {}(),
              },
          };
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

Future<void> _onPromoVerifyError(
  Exception exception,
  BuildContext context,
) async {
  final String snackBarMessage;
  if (exception case DioException(:final response) when response != null) {
    log(response.data.toString());
    final i18n = Translations.of(context);
    final data = response.data;
    snackBarMessage = switch (response.statusCode) {
      404 => i18n.homePage.tickets.invitation.error.status404,
      429 => i18n.homePage.tickets.invitation.error.status429,
      500 => i18n.homePage.tickets.invitation.error.status500,
      _ when data is Map<String, dynamic> && data['error'] != null =>
        data['error']!.toString(),
      _ => i18n.homePage.tickets.invitation.error.unknown,
    };
  } else if (exception case DioException(:final message) when message != null) {
    snackBarMessage = message;
  } else {
    snackBarMessage = 'ネットワークのエラーが発生しました';
  }
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(snackBarMessage),
    ),
  );
}
