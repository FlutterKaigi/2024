import 'package:common_data/sponsor.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SponsorTypeLogo extends StatelessWidget {
  factory SponsorTypeLogo.withText(SponsorType type) => SponsorTypeLogo._(
        type: type,
        showText: true,
      );

  factory SponsorTypeLogo.withoutText(SponsorType type) => SponsorTypeLogo._(
        type: type,
        showText: false,
      );

  const SponsorTypeLogo._({
    required this.type,
    required this.showText,
  });

  final SponsorType type;
  final bool showText;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    final gradient = switch (type) {
      SponsorType.platinum => const LinearGradient(
          colors: [
            Color(0xFFE1ECFF),
            Color(0xFF8AB1E7),
          ],
        ),
      SponsorType.gold => const LinearGradient(
          colors: [
            Color(0xFFFFF200),
            Color(0xFFE19651),
          ],
        ),
      SponsorType.silver => const LinearGradient(
          colors: [
            Color(0xFFD3D3D4),
            Color(0xFFABABAB),
          ],
        ),
      SponsorType.bronze => const LinearGradient(
          colors: [
            Color(0xFFCD8237),
            Color(0xFF8D5A26),
          ],
        ),
    };
    final textColor = switch (type) {
      SponsorType.platinum => const Color(0xFF1E3C6E),
      SponsorType.gold => const Color(0xFF6E1E1E),
      SponsorType.silver => const Color(0xFF6D6D6D),
      SponsorType.bronze => const Color(0xFF4E3115),
    };

    final prefix = switch (type) {
      SponsorType.platinum => 'P',
      SponsorType.gold => 'G',
      SponsorType.silver => 'S',
      SponsorType.bronze => 'B',
    };

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: gradient,
            shape: BoxShape.circle,
          ),
          child: SizedBox(
            height: 48,
            width: 48,
            child: Center(
              child: Text(
                prefix,
                style: textTheme.availableFonts.poppins.bold.copyWith(
                  color: textColor,
                  fontSize: 36,
                ),
              ),
            ),
          ),
        ),
        if (showText) ...[
          const Gap(8),
          Text(
            switch (type) {
              SponsorType.platinum => 'Platinum',
              SponsorType.gold => 'Gold',
              SponsorType.silver => 'Silver',
              SponsorType.bronze => 'Bronze',
            },
            style: textTheme.availableFonts.poppins.regular.copyWith(
              color: textColor,
              fontSize: 24,
            ),
          ),
        ],
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<SponsorType>('type', type));
    properties.add(DiagnosticsProperty<bool>('showText', showText));
  }
}
