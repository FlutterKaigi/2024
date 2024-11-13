import 'package:flutter/material.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/core/gen/fonts.gen.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TicketSectionCard extends StatelessWidget {
  const TicketSectionCard({
    required this.sectionId,
    super.key,
  });

  final String sectionId;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      color: theme.colorScheme.secondaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          children: [
            Text(
              i18n.ticketPage.qrCode.sectionId,
              style: (isMobile ? textTheme.bodySmall : textTheme.bodyMedium)
                  ?.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              sectionId,
              style: (isMobile ? textTheme.titleMedium : textTheme.titleLarge)
                  ?.copyWith(
                color: theme.colorScheme.onSecondaryContainer,
                fontWeight: FontWeight.bold,
                fontFamily: FontFamily.poppins,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
