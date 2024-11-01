import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:intl/intl.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:url_launcher/url_launcher.dart';

/// 個人チケットのカード
class PersonalSponsorTicketCard extends StatelessWidget {
  const PersonalSponsorTicketCard({
    required this.isLoggedIn,
    this.onPurchasePressed,
    super.key,
  });

  final bool isLoggedIn;
  final VoidCallback? onPurchasePressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final i18n = Translations.of(context);

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
              i18n.homePage.tickets.personalSponsor.name,
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              i18n.homePage.tickets.price(
                price: NumberFormat('#,###').format(30000),
              ),
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            MarkdownBody(
              data:
                  i18n.homePage.tickets.personalSponsor.description.join('\n'),
              styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
                p: textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
              softLineBreak: true,
              onTapLink: (text, href, title) {
                if (href != null) {
                  final uri = Uri.tryParse(href);
                  if (uri != null) {
                    unawaited(
                      launchUrl(uri),
                    );
                  }
                }
              },
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
          ],
        ),
      ),
    );
  }
}
