import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/components/responsive_content_container.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

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
    return SiteScaffold.widget(
      showFooter: false,
      body: ResponsiveContentContainer(
        child: _Body(
          stripeSessionId: stripeSessionId,
        ),
      ),
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
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      color: colorScheme.primaryContainer,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Row(),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '購入処理を完了してください',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '購入処理を完了するためには、Stripeのページに移動します。',
                  style: TextStyle(
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '移動するには以下のボタンを押してください。',
                  style: TextStyle(
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () async {
                    // StripeのセッションIDを使って購入処理を開始
                    // この処理はStripeのAPIを呼び出すことになる
                    // ここでは省略
                  },
                  child: const Text('購入処理を開始'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
