// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_api/model/ticket/promotion_metadata.dart';
import 'package:ticket_web/core/components/error/error_dialog.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/core/util/full_screen_loading.dart';
import 'package:ticket_web/core/util/result.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/feature/payment/data/payment_service.dart';
import 'package:ticket_web/feature/promotion_code/data/promotion_code_service.dart';
import 'package:ticket_web/feature/promotion_code/ui/on_invited_promotion_code_entered_dialog/on_invited_promotion_code_entered_session_dialog.dart';
import 'package:ticket_web/feature/promotion_code/ui/on_invited_promotion_code_entered_dialog/on_invited_promotion_code_entered_sponsor_dialog.dart';
import 'package:ticket_web/feature/promotion_code/ui/on_invited_promotion_code_entered_dialog/on_invited_promotion_code_entered_sponsor_session_dialog.dart';
import 'package:ticket_web/feature/promotion_code/ui/on_promotion_code_verified_dialog.dart';
import 'package:ticket_web/feature/session/data/session_provider.dart';
import 'package:ticket_web/feature/sponsor/data/sponsor_provider.dart';
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
          final i18n = Translations.of(context);
          final ticketVariant = i18n.homePage.tickets.variant;
          String getAlertDialogTitle(PromotionMetadataType type) {
            final title =
                i18n.homePage.tickets.invitation.validation.invited.title;

            final suffix = switch (type) {
              PromotionMetadataType.general => ticketVariant.general,
              PromotionMetadataType.session => ticketVariant.sessionSpeaker,
              PromotionMetadataType.sponsor => ticketVariant.sponsorInvitation,
              PromotionMetadataType.sponsorSession =>
                ticketVariant.sponsorSession,
            };
            return '$title ($suffix)';
          }

          final _ = await switch (result) {
            Failure(:final exception) => ErrorDialog.show(
                context: context,
                error: exception,
                onDioExceptionStatusOverride: (code) {
                  final i18n = Translations.of(context);
                  return switch (code) {
                    404 => i18n.homePage.tickets.invitation.error.status404,
                    429 => i18n.homePage.tickets.invitation.error.status429,
                    500 => i18n.homePage.tickets.invitation.error.status500,
                    _ => null,
                  };
                },
              ),
            Success(:final value) => switch (value.type) {
                // プロモーションコードが、一般チケットのプロモーションコードとして有効な場合
                // 一般チケットの購入画面に遷移する
                PromotionMetadataType.general =>
                  OnPromotionCodeVerifiedDialog.show(
                    context: context,
                    promotionCode: code,
                    metadata: value,
                  ),
                PromotionMetadataType.session => () async {
                    final sessionsResult =
                        await FullScreenCircularProgressIndicator.showUntil(
                      context,
                      () async => ref.read(sessionProvider.future),
                    ).wrapped();
                    return switch (sessionsResult) {
                      Failure(:final exception) when context.mounted =>
                        ErrorDialog.show(
                          context: context,
                          error: exception,
                        ),
                      Success(value: final sessions) => () async {
                          final selectedSession =
                              await OnInvitedPromotionCodeEnteredSessionDialog
                                  .show(
                            context: context,
                            sessions: sessions,
                            title: getAlertDialogTitle(value.type),
                          );
                          // TODO(YumNumm): 保存処理
                          if (context.mounted) {
                            await OnPromotionCodeVerifiedDialog.show(
                              context: context,
                              promotionCode: code,
                              metadata: value,
                            );
                          }
                        }(),
                      _ => null,
                    };
                  }(),
                PromotionMetadataType.sponsor => () async {
                    final sponsorsResult =
                        await FullScreenCircularProgressIndicator.showUntil(
                      context,
                      () async => ref.read(sponsorWithSessionsProvider.future),
                    ).wrapped();
                    return switch (sponsorsResult) {
                      Failure(:final exception) when context.mounted =>
                        ErrorDialog.show(
                          context: context,
                          error: exception,
                        ),
                      Success(value: final sponsors) => () async {
                          final selectedSponsor =
                              await OnInvitedPromotionCodeEnteredSponsorDialog
                                  .show(
                            context: context,
                            sponsors: sponsors,
                            title: getAlertDialogTitle(value.type),
                          );
                          // TODO(YumNumm): 保存処理
                          if (context.mounted) {
                            await OnPromotionCodeVerifiedDialog.show(
                              context: context,
                              promotionCode: code,
                              metadata: value,
                            );
                          }
                        }(),
                      _ => null,
                    };
                  }(),
                PromotionMetadataType.sponsorSession => () async {
                    final sponsorAndSessionsResult =
                        await FullScreenCircularProgressIndicator.showUntil(
                      context,
                      () async =>
                          ref.read(sponsorAndSessionListProvider.future),
                    ).wrapped();
                    return switch (sponsorAndSessionsResult) {
                      Failure(:final exception) when context.mounted =>
                        ErrorDialog.show(
                          context: context,
                          error: exception,
                        ),
                      Success(value: final sponsorAndSessions) => () async {
                          final selectedSponsorAndSession =
                              await OnInvitedPromotionCodeEnteredSponsorSessionDialog
                                  .show(
                            context: context,
                            sessionWithSponsors: sponsorAndSessions,
                            title: getAlertDialogTitle(value.type),
                          );
                          // TODO(YumNumm): 保存処理
                          if (context.mounted) {
                            await OnPromotionCodeVerifiedDialog.show(
                              context: context,
                              promotionCode: code,
                              metadata: value,
                            );
                          }
                        }(),
                      _ => null,
                    };
                  }(),
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
