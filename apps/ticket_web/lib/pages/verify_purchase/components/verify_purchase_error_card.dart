import 'package:flutter/material.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class VerifyPurchaseErrorCard extends StatelessWidget {
  const VerifyPurchaseErrorCard({
    required this.exception,
    super.key,
  });

  final Object exception;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final title = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.error,
          size: 48,
          color: colorScheme.error,
        ),
        const SizedBox(width: 16),
        Flexible(
          child: Text(
            i18n.verifyPurchase.error,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onErrorContainer,
            ),
          ),
        ),
      ],
    );

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title,
            const SizedBox(height: 16),
            Text(
              i18n.verifyPurchase.errorDescription,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onErrorContainer,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              exception.toString(),
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onErrorContainer,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              i18n.verifyPurchase.contact,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onErrorContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
