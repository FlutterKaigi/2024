import 'package:flutter/material.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class VerifyPurchaseProcessingCard extends StatelessWidget {
  const VerifyPurchaseProcessingCard({
    required this.stripeSessionId,
    super.key,
  });

  final String stripeSessionId;

  @override
  Widget build(BuildContext context) {
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
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 32,
                      child: CircularProgressIndicator.adaptive(),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      i18n.verifyPurchase.processing,
                      style: theme.textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  i18n.verifyPurchase.processingDescription,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
