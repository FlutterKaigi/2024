import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

/// 一般チケットのカード
class NormalTicketCard extends HookWidget {
  const NormalTicketCard({
    required this.isLoggedIn,
    super.key,
    this.onPurchasePressed,
    this.onApplyCodePressed,
  });

  final bool isLoggedIn;
  final VoidCallback? onPurchasePressed;
  final void Function(String code)? onApplyCodePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final i18n = Translations.of(context);

    final textController = useTextEditingController();

    return Card.outlined(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(),
            Text(
              i18n.homePage.tickets.normal.name,
              style: textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              i18n.homePage.tickets.normal.description,
              style: textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              i18n.homePage.tickets.normal.price(
                price: NumberFormat('#,###').format(3000),
              ),
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            FilledButton.icon(
              style: FilledButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              onPressed: isLoggedIn
                  ? () async {
                      // TODO(YumNumm): チケットを購入する
                    }
                  : null,
              icon: const Icon(Icons.shopping_cart),
              label: Text(i18n.homePage.tickets.buyTicket),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            TextField(
              enabled: isLoggedIn,
              controller: textController,
              decoration: InputDecoration(
                labelText: i18n.homePage.tickets.normal.couponCode,
                hintText: i18n.homePage.tickets.invitation.textBoxDescription,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              onSubmitted: (value) => onApplyCodePressed?.call(value),
            ),
            const SizedBox(height: 8),
            FilledButton.icon(
              icon: const Icon(Icons.check),
              label: Text(i18n.homePage.tickets.invitation.applyCodeButton),
              style: FilledButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              onPressed: isLoggedIn
                  ? () async => onApplyCodePressed?.call(textController.text)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
