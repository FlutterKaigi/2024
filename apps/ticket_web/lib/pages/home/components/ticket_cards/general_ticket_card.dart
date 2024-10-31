import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:intl/intl.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

/// 一般チケットのカード
class GeneralTicketCard extends HookWidget {
  const GeneralTicketCard({
    required this.isLoggedIn,
    this.onPurchasePressed,
    this.onSignInPressed,
    this.onApplyCodePressed,
    super.key,
  });

  final bool isLoggedIn;
  final VoidCallback? onPurchasePressed;
  final VoidCallback? onSignInPressed;
  final void Function(String code)? onApplyCodePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final isMobile = MediaQuery.sizeOf(context).isMobile;

    final i18n = Translations.of(context);

    final textEditingController = useTextEditingController();

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
              style: (isMobile ? textTheme.titleMedium : textTheme.titleLarge)
                  ?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              i18n.homePage.tickets.price(
                price: NumberFormat('#,###').format(6000),
              ),
              style: (isMobile ? textTheme.titleMedium : textTheme.titleLarge)
                  ?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            MarkdownBody(
              data: i18n.homePage.tickets.normal.description.join('\n'),
              styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
                p: (isMobile ? textTheme.bodyMedium : textTheme.bodyLarge)
                    ?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
              softLineBreak: true,
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              style: FilledButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              onPressed: isLoggedIn ? onPurchasePressed : null,
              icon: const Icon(Icons.shopping_cart),
              label: Text(i18n.homePage.tickets.buyTicket),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            Text(
              i18n.homePage.tickets.invitation.description,
              style: (isMobile ? textTheme.bodyMedium : textTheme.bodyLarge)
                  ?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              enabled: isLoggedIn,
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: i18n.homePage.tickets.invitation.textBoxTitle,
                hintText: i18n.homePage.tickets.invitation.textBoxDescription,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: textEditingController.clear,
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
                  ? () => onApplyCodePressed?.call(textEditingController.text)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
