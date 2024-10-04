import 'package:flutter/material.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class AlreadyPurchasedCard extends StatelessWidget {
  const AlreadyPurchasedCard({
    required this.onTicketPagePressed,
    super.key,
  });

  final VoidCallback? onTicketPagePressed;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Card.outlined(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.colorScheme.onPrimaryContainer,
        ),
      ),
      color: theme.colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              i18n.homePage.tickets.alreadyPurchasedCard.title,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              i18n.homePage.tickets.alreadyPurchasedCard.description,
              style: textTheme.bodyMedium?.copyWith(
                color:
                    theme.colorScheme.onPrimaryContainer.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: onTicketPagePressed,
              icon: const Icon(Icons.confirmation_number),
              label: Text(i18n.homePage.tickets.alreadyPurchasedCard.button),
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
