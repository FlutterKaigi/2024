import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ticket_web/core/theme/extension/theme_extension.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:url_launcher/link.dart';

/// FlutterKaigi 2024のHPへの遷移するボタン
class TransitToHomePage extends HookWidget {
  const TransitToHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final uri = useMemoized(
      () => Uri.parse('https://flutterkaigi.jp/2024'),
    );

    final theme = Theme.of(context);
    final gradientTheme = theme.customThemeExtension.gradientTheme;

    final i18n = Translations.of(context);

    return DecoratedBox(
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
            '${i18n.flutterKaigi} ${i18n.officialSite}',
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
