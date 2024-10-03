import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ticket_web/core/theme/extension/theme_extension.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:url_launcher/link.dart';

class TicketWillBeOnSaleCard extends HookWidget {
  const TicketWillBeOnSaleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final uri = useMemoized(
      () => Uri.parse('https://x.com/FlutterKaigi'),
    );
    final gradientTheme = theme.customThemeExtension.gradientTheme;

    final button = DecoratedBox(
      decoration: BoxDecoration(
        gradient: gradientTheme.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Link(
        uri: uri,
        builder: (context, action) => FilledButton(
          onPressed: action,
          style: FilledButton.styleFrom(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Text(
            i18n.homePage.ticketWillBeOnSaleCard.button,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: theme.colorScheme.onPrimaryContainer,
        ),
      ),
      color: theme.colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.info,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      i18n.homePage.ticketWillBeOnSaleCard.title,
                      style: textTheme.titleLarge?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                i18n.homePage.ticketWillBeOnSaleCard.description,
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              Center(child: button),
            ],
          ),
        ),
      ),
    );
  }
}
