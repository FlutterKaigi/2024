import 'package:flutter/material.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class WarningForSpeakerProfileCard extends StatelessWidget {
  const WarningForSpeakerProfileCard({super.key});

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
          color: theme.colorScheme.error,
        ),
      ),
      color: theme.colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              i18n.ticketPage.warningForSpeakerProfile.title,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onErrorContainer,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              i18n.ticketPage.warningForSpeakerProfile.description,
              style: textTheme.bodyMedium?.copyWith(
                color:
                    theme.colorScheme.onErrorContainer.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
