import 'package:common_data/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:ticket_web/core/extension/is_mobile.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class ProfileEditRestriction extends StatelessWidget {
  const ProfileEditRestriction({
    required this.ticket,
    super.key,
  });

  final Ticket ticket;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return SizedBox(
      width: desktopThreshold / 3 * 2,
      child: Card.outlined(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: theme.colorScheme.primary,
          ),
        ),
        color: theme.colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  i18n.ticketPage.profileEditRestriction.title,
                  style:
                      (isMobile ? textTheme.titleSmall : textTheme.titleMedium)
                          ?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Flexible(
                child: MarkdownBody(
                  data: i18n.ticketPage.profileEditRestriction.description,
                  styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
                    p: (isMobile ? textTheme.bodySmall : textTheme.bodyMedium)
                        ?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer
                          .withValues(alpha: 0.7),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
