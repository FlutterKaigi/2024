import 'package:flutter/material.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class AlreadyLoggedInCard extends StatelessWidget {
  const AlreadyLoggedInCard({
    required this.mailAddress,
    required this.onLogOutPressed,
    super.key,
  });

  final String mailAddress;
  final VoidCallback? onLogOutPressed;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Card.outlined(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.colorScheme.onSurface,
        ),
      ),
      color: theme.colorScheme.surfaceContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      Icons.check,
                      size: 24,
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const TextSpan(text: ' '),
                  TextSpan(
                    text: i18n.authorization.alreadyLoggedInWithMailAddress(
                      mailAddress: mailAddress,
                    ),
                    style: textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            Text(
              i18n.homePage.tickets.ticketManagedByGoogleAccount,
              style: textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: onLogOutPressed,
              child: Text(i18n.authorization.logOut),
            ),
          ],
        ),
      ),
    );
  }
}
