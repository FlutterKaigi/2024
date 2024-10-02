import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class ThankYouForPurchaseTicketCard extends StatelessWidget {
  const ThankYouForPurchaseTicketCard({
    required this.ticketType,
    super.key,
  });

  final TicketType ticketType;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(),
          Text(
            i18n.ticketPage.thankYouCard.title,
            style: (isMobile ? textTheme.titleMedium : textTheme.displaySmall)
                ?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            i18n.ticketPage.thankYouCard.description(
              type: switch (ticketType) {
                TicketType.general => i18n.homePage.tickets.variant.general,
                TicketType.individualSponsor =>
                  i18n.homePage.tickets.variant.personalSponsor,
                TicketType.sponsorBooth =>
                  i18n.homePage.tickets.variant.sponsorBooth,
                TicketType.sponsorInvited =>
                  i18n.homePage.tickets.variant.sponsorInvitation,
                TicketType.sponsorSpeaker =>
                  i18n.homePage.tickets.variant.sponsorSession,
                TicketType.regularSpeaker =>
                  i18n.homePage.tickets.variant.sponsorSession,
              },
            ),
            style: (isMobile ? textTheme.bodySmall : textTheme.bodyMedium)
                ?.copyWith(
              color:
                  theme.colorScheme.onPrimaryContainer.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
