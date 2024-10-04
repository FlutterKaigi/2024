import 'package:flutter/material.dart';
import 'package:ticket_web/feature/auth/ui/sign_in_with_google_button.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class LoginBeforePurchaseCard extends StatelessWidget {
  const LoginBeforePurchaseCard({
    this.onSignInPressed,
    super.key,
  });

  final VoidCallback? onSignInPressed;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final child = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          i18n.homePage.tickets.loginBeforeBuy,
          style: textTheme.titleMedium,
        ),
        const SizedBox(height: 4),
        Text(
          i18n.homePage.tickets.ticketManagedByGoogleAccount,
          style: textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 8),
        SignInWithGoogleButton(
          onPressed: onSignInPressed,
        ),
      ],
    );

    return Card.outlined(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.colorScheme.error,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: theme.colorScheme.errorContainer,
      child: DefaultTextStyle(
        style: TextStyle(
          color: theme.colorScheme.onErrorContainer,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}
