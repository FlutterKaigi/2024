import 'package:flutter/material.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class EntranceInformationCard extends StatelessWidget {
  const EntranceInformationCard({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return Card.outlined(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(isMobile ? 4 : 16),
        side: BorderSide(
          color: theme.colorScheme.surfaceDim,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(isMobile ? 8 : 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.info,
                  color: theme.colorScheme.onSurface,
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    i18n.ticketPage.entranceInformation.title,
                    style: (isMobile
                            ? textTheme.titleMedium
                            : textTheme.titleLarge)
                        ?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ...i18n.ticketPage.entranceInformation.description.map(
              (text) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  text,
                  style: (isMobile ? textTheme.bodySmall : textTheme.bodyMedium)
                      ?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
