import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_api/ticket_api.dart';
import 'package:ticket_web/core/components/error/error_card.dart';
import 'package:ticket_web/core/components/responsive_content_container.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
import 'package:ticket_web/core/provider/environment.dart';
import 'package:ticket_web/core/router/router.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/feature/promotion_code/data/invited_promotion_selected_session.dart';
import 'package:ticket_web/feature/promotion_code/data/invited_promotion_selected_sponsor.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:ticket_web/pages/ticket/ticket_page.dart';
import 'package:ticket_web/pages/verify_purchase/components/verify_purchase_processed_card.dart';
import 'package:ticket_web/pages/verify_purchase/components/verify_purchase_processing_card.dart';

class VerifyPurchaseRoute extends GoRouteData {
  const VerifyPurchaseRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final sessionId = state.uri.queryParameters['sessionId'];
    if (sessionId == null) {
      throw Exception('sessionIdが指定されていません: ${state.pathParameters}');
    }

    return VerifyPurchasePage(
      stripeSessionId: sessionId,
    );
  }
}

class VerifyPurchasePage extends StatelessWidget {
  const VerifyPurchasePage({
    required this.stripeSessionId,
    super.key,
  });

  final String stripeSessionId;

  @override
  Widget build(BuildContext context) {
    return SiteScaffold.slivers(
      showFooter: false,
      slivers: [
        SliverFillRemaining(
          child: ResponsiveContentContainer(
            child: _Body(
              stripeSessionId: stripeSessionId,
            ),
          ),
        ),
      ],
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body({
    required this.stripeSessionId,
  });

  final String stripeSessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: discarded_futures
    final verifyPurchaseFuture = useMemoized(
      () async {
        final accessToken =
            ref.read(authNotifierProvider.notifier).accessToken();
        if (accessToken == null) {
          throw Exception('ログインしていません');
        }
        final result = await ref
            .read(
              TicketApiClientProvider(
                ref.watch(environmentProvider).ticketApiBaseUrl,
              ),
            )
            .verifyPurchase(
              stripeSessionId: stripeSessionId,
              authorization: accessToken,
              sessionId: ref.read(invitedPromotionSelectedSessionProvider),
              sponsorId:
                  ref.read(invitedPromotionSelectedSponsorProvider)?.toString(),
            );
        log('verifyPurchase result: $result');
        // レスポンスが早いとローディングが表示されないため、1秒待つ
        await Future<void>.delayed(
          const Duration(seconds: 1),
        );
        return result;
      },
    );

    final verifyPurchaseState = useFuture(verifyPurchaseFuture);

    useEffect(
      () {
        if (verifyPurchaseState.hasData) {
          unawaited(() async {
            await Future<void>.delayed(const Duration(seconds: 2));
            if (context.mounted) {
              const TicketRoute().go(context);
            }
          }());
        }
        return null;
      },
      [verifyPurchaseState],
    );

    if (verifyPurchaseState.hasError) {
      final i18n = Translations.of(context);

      final error = verifyPurchaseState.error!;
      return ErrorCard(
        error: error,
        title: i18n.verifyPurchase.error,
        suffixMessage: '${i18n.verifyPurchase.errorDescription}\n'
            '${i18n.verifyPurchase.contact}',
        padding: const EdgeInsets.all(32),
      );
    }

    if (verifyPurchaseState.hasData) {
      return const VerifyPurchaseProcessedCard();
    }

    return VerifyPurchaseProcessingCard(
      stripeSessionId: stripeSessionId,
    );
  }
}
