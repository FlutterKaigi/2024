import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

/// 招待チケット・クーポンコードのカード
class InvitationTicketCard extends HookWidget {
  const InvitationTicketCard({
    required this.isLoggedIn,
    super.key,
    this.onApplyCodePressed,
    this.onSignInPressed,
  });

  final bool isLoggedIn;
  final void Function(String code)? onApplyCodePressed;
  final VoidCallback? onSignInPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final i18n = Translations.of(context);

    final textController = useTextEditingController();

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
              i18n.homePage.tickets.invitation.name,
              style: textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              i18n.homePage.tickets.invitation.description,
            ),
            const SizedBox(height: 16),
            TextField(
              enabled: isLoggedIn,
              controller: textController,
              decoration: InputDecoration(
                labelText: i18n.homePage.tickets.invitation.textBoxTitle,
                hintText: i18n.homePage.tickets.invitation.textBoxDescription,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              onSubmitted: (value) => onApplyCodePressed?.call(value),
            ),
            const SizedBox(height: 8),
            FilledButton.icon(
              icon: const Icon(Icons.check),
              label: Text(i18n.homePage.tickets.invitation.applyCodeButton),
              style: FilledButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
              onPressed: isLoggedIn
                  ? () async => onApplyCodePressed?.call(textController.text)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
